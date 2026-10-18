.class public final Landroidx/preference/f;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/f$b;,
        Landroidx/preference/f$a;,
        Landroidx/preference/f$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:J

.field public c:Landroid/content/SharedPreferences;

.field public d:Landroid/content/SharedPreferences$Editor;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Landroidx/preference/PreferenceScreen;

.field public i:Landroidx/preference/f$c;

.field public j:Landroidx/preference/f$a;

.field public k:Landroidx/preference/f$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroidx/preference/f;->b:J

    .line 3
    iput-object p1, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroidx/preference/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->L(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/f;->e:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/f;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/f;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/preference/f;->a:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Landroidx/preference/f;->f:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/f;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/preference/f;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final e(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/f;->e:Z

    .line 2
    new-instance v0, Lx0/d;

    invoke-direct {v0, p1, p0}, Lx0/d;-><init>(Landroid/content/Context;Landroidx/preference/f;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140004

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Lx0/d;->c(Lorg/xmlpull/v1/XmlPullParser;)Landroidx/preference/Preference;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 6
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .line 7
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->w(Landroidx/preference/f;)V

    const/4 p1, 0x0

    .line 8
    iget-object v1, p0, Landroidx/preference/f;->d:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    :cond_0
    iput-boolean p1, p0, Landroidx/preference/f;->e:Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 12
    throw v0
.end method
