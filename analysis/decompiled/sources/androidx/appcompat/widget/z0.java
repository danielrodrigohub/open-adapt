package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.newrelic.agent.android.AgentConfiguration;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: SuggestionsAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class z0 extends o0.c implements View.OnClickListener {
    public static final /* synthetic */ int F = 0;
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final SearchView f1484s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final SearchableInfo f1485t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Context f1486u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final WeakHashMap<String, Drawable.ConstantState> f1487v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f1488w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1489x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ColorStateList f1490y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f1491z;

    /* JADX INFO: compiled from: SuggestionsAdapter.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f1493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageView f1494c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImageView f1495d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImageView f1496e;

        public a(View view) {
            this.f1492a = (TextView) view.findViewById(R.id.text1);
            this.f1493b = (TextView) view.findViewById(R.id.text2);
            this.f1494c = (ImageView) view.findViewById(R.id.icon1);
            this.f1495d = (ImageView) view.findViewById(R.id.icon2);
            this.f1496e = (ImageView) view.findViewById(androidx.appcompat.R.id.edit_query);
        }
    }

    public z0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout());
        this.f1489x = 1;
        this.f1491z = -1;
        this.A = -1;
        this.B = -1;
        this.C = -1;
        this.D = -1;
        this.E = -1;
        this.f1484s = searchView;
        this.f1485t = searchableInfo;
        this.f1488w = searchView.getSuggestionCommitIconResId();
        this.f1486u = context;
        this.f1487v = weakHashMap;
    }

    public static String i(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e10);
            return null;
        }
    }

    @Override // o0.a
    public final void b(View view, Cursor cursor) {
        Drawable drawableG;
        Drawable drawable;
        CharSequence charSequenceI;
        a aVar = (a) view.getTag();
        int i10 = this.E;
        int i11 = i10 != -1 ? cursor.getInt(i10) : 0;
        if (aVar.f1492a != null) {
            String strI = i(cursor, this.f1491z);
            TextView textView = aVar.f1492a;
            textView.setText(strI);
            if (TextUtils.isEmpty(strI)) {
                textView.setVisibility(8);
            } else {
                textView.setVisibility(0);
            }
        }
        if (aVar.f1493b != null) {
            String strI2 = i(cursor, this.B);
            if (strI2 != null) {
                if (this.f1490y == null) {
                    TypedValue typedValue = new TypedValue();
                    this.f1486u.getTheme().resolveAttribute(androidx.appcompat.R.attr.textColorSearchUrl, typedValue, true);
                    this.f1490y = this.f1486u.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(strI2);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1490y, null), 0, strI2.length(), 33);
                charSequenceI = spannableString;
            } else {
                charSequenceI = i(cursor, this.A);
            }
            if (TextUtils.isEmpty(charSequenceI)) {
                TextView textView2 = aVar.f1492a;
                if (textView2 != null) {
                    textView2.setSingleLine(false);
                    aVar.f1492a.setMaxLines(2);
                }
            } else {
                TextView textView3 = aVar.f1492a;
                if (textView3 != null) {
                    textView3.setSingleLine(true);
                    aVar.f1492a.setMaxLines(1);
                }
            }
            TextView textView4 = aVar.f1493b;
            textView4.setText(charSequenceI);
            if (TextUtils.isEmpty(charSequenceI)) {
                textView4.setVisibility(8);
            } else {
                textView4.setVisibility(0);
            }
        }
        ImageView imageView = aVar.f1494c;
        if (imageView != null) {
            int i12 = this.C;
            if (i12 == -1) {
                drawableG = null;
            } else {
                drawableG = g(cursor.getString(i12));
                if (drawableG == null) {
                    ComponentName searchActivity = this.f1485t.getSearchActivity();
                    String strFlattenToShortString = searchActivity.flattenToShortString();
                    if (this.f1487v.containsKey(strFlattenToShortString)) {
                        Drawable.ConstantState constantState = this.f1487v.get(strFlattenToShortString);
                        drawableG = constantState == null ? null : constantState.newDrawable(this.f1486u.getResources());
                    } else {
                        PackageManager packageManager = this.f1486u.getPackageManager();
                        try {
                            ActivityInfo activityInfo = packageManager.getActivityInfo(searchActivity, 128);
                            int iconResource = activityInfo.getIconResource();
                            if (iconResource != 0) {
                                drawable = packageManager.getDrawable(searchActivity.getPackageName(), iconResource, activityInfo.applicationInfo);
                                if (drawable == null) {
                                    StringBuilder sbC = y0.c("Invalid icon resource ", iconResource, " for ");
                                    sbC.append(searchActivity.flattenToShortString());
                                    Log.w("SuggestionsAdapter", sbC.toString());
                                    drawable = null;
                                }
                            } else {
                                drawable = null;
                            }
                        } catch (PackageManager.NameNotFoundException e10) {
                            Log.w("SuggestionsAdapter", e10.toString());
                        }
                        this.f1487v.put(strFlattenToShortString, drawable == null ? null : drawable.getConstantState());
                        drawableG = drawable;
                    }
                    if (drawableG == null) {
                        drawableG = this.f1486u.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            j(imageView, drawableG, 4);
        }
        ImageView imageView2 = aVar.f1495d;
        if (imageView2 != null) {
            int i13 = this.D;
            j(imageView2, i13 == -1 ? null : g(cursor.getString(i13)), 8);
        }
        int i14 = this.f1489x;
        if (i14 != 2 && (i14 != 1 || (i11 & 1) == 0)) {
            aVar.f1496e.setVisibility(8);
            return;
        }
        aVar.f1496e.setVisibility(0);
        aVar.f1496e.setTag(aVar.f1492a.getText());
        aVar.f1496e.setOnClickListener(this);
    }

    @Override // o0.a
    public final void c(Cursor cursor) {
        try {
            super.c(cursor);
            if (cursor != null) {
                this.f1491z = cursor.getColumnIndex("suggest_text_1");
                this.A = cursor.getColumnIndex("suggest_text_2");
                this.B = cursor.getColumnIndex("suggest_text_2_url");
                this.C = cursor.getColumnIndex("suggest_icon_1");
                this.D = cursor.getColumnIndex("suggest_icon_2");
                this.E = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e10);
        }
    }

    @Override // o0.a
    public final CharSequence d(Cursor cursor) {
        String strI;
        String strI2;
        if (cursor == null) {
            return null;
        }
        String strI3 = i(cursor, cursor.getColumnIndex("suggest_intent_query"));
        if (strI3 != null) {
            return strI3;
        }
        if (this.f1485t.shouldRewriteQueryFromData() && (strI2 = i(cursor, cursor.getColumnIndex("suggest_intent_data"))) != null) {
            return strI2;
        }
        if (!this.f1485t.shouldRewriteQueryFromText() || (strI = i(cursor, cursor.getColumnIndex("suggest_text_1"))) == null) {
            return null;
        }
        return strI;
    }

    @Override // o0.a
    public final View e(ViewGroup viewGroup) {
        View viewInflate = this.f12063r.inflate(this.f12061p, viewGroup, false);
        viewInflate.setTag(new a(viewInflate));
        ((ImageView) viewInflate.findViewById(androidx.appcompat.R.id.edit_query)).setImageResource(this.f1488w);
        return viewInflate;
    }

    public final Drawable f(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1486u.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0132  */
    public final Drawable g(String str) {
        Drawable drawableF = null;
        if (str != null && !str.isEmpty() && !AgentConfiguration.DEFAULT_DEVICE_UUID.equals(str)) {
            try {
                int i10 = Integer.parseInt(str);
                String str2 = "android.resource://" + this.f1486u.getPackageName() + "/" + i10;
                Drawable.ConstantState constantState = this.f1487v.get(str2);
                Drawable drawableNewDrawable = constantState == null ? null : constantState.newDrawable();
                if (drawableNewDrawable != null) {
                    return drawableNewDrawable;
                }
                Context context = this.f1486u;
                Object obj = y.a.f18143a;
                Drawable drawableB = y.a.b.b(context, i10);
                if (drawableB != null) {
                    this.f1487v.put(str2, drawableB.getConstantState());
                }
                return drawableB;
            } catch (Resources.NotFoundException unused) {
                Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
                return null;
            } catch (NumberFormatException unused2) {
                Drawable.ConstantState constantState2 = this.f1487v.get(str);
                Drawable drawableNewDrawable2 = constantState2 == null ? null : constantState2.newDrawable();
                if (drawableNewDrawable2 != null) {
                    return drawableNewDrawable2;
                }
                Uri uri = Uri.parse(str);
                try {
                    if ("android.resource".equals(uri.getScheme())) {
                        try {
                            drawableF = f(uri);
                        } catch (Resources.NotFoundException unused3) {
                            throw new FileNotFoundException("Resource does not exist: " + uri);
                        }
                    } else {
                        InputStream inputStreamOpenInputStream = this.f1486u.getContentResolver().openInputStream(uri);
                        if (inputStreamOpenInputStream == null) {
                            throw new FileNotFoundException("Failed to open " + uri);
                        }
                        try {
                            Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e10) {
                                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e10);
                            }
                            drawableF = drawableCreateFromStream;
                        } catch (Throwable th) {
                            try {
                                inputStreamOpenInputStream.close();
                            } catch (IOException e11) {
                                Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e11);
                            }
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e12) {
                    Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e12.getMessage());
                    if (drawableF != null) {
                        this.f1487v.put(str, drawableF.getConstantState());
                    }
                    return drawableF;
                }
                if (drawableF != null) {
                    this.f1487v.put(str, drawableF.getConstantState());
                }
            }
        }
        return drawableF;
    }

    @Override // o0.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewInflate = this.f12063r.inflate(this.f12062q, viewGroup, false);
            if (viewInflate != null) {
                ((a) viewInflate.getTag()).f1492a.setText(e10.toString());
            }
            return viewInflate;
        }
    }

    @Override // o0.a, android.widget.Adapter
    public final View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewE = e(viewGroup);
            ((a) viewE.getTag()).f1492a.setText(e10.toString());
            return viewE;
        }
    }

    public final Cursor h(SearchableInfo searchableInfo, String str) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        builderFragment.appendQueryParameter("limit", String.valueOf(50));
        return this.f1486u.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr, null);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    public final void j(ImageView imageView, Drawable drawable, int i10) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i10);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        Cursor cursor = this.f12052j;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        Cursor cursor = this.f12052j;
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1484s.r((CharSequence) tag);
        }
    }
}
