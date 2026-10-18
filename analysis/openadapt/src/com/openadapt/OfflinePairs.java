package com.openadapt;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

/** Local persistence for genuinely paired devices. Never manufactures BLE keys or Nike credentials. */
public final class OfflinePairs {
    private static final Object LOCK = new Object();
    private static final String KEY = "pairs_v1";
    private OfflinePairs() {}

    private static Object singleton(String owner, String field) throws Exception {
        return Class.forName(owner).getField(field).get(null);
    }

    private static SharedPreferences preferences() throws Exception {
        Object applicationCompanion = singleton("com.nike.adapt.BigfootApplication", "p");
        Context context = (Context) applicationCompanion.getClass().getMethod("a").invoke(applicationCompanion);
        return context.getSharedPreferences("openadapt_offline_pairs", Context.MODE_PRIVATE);
    }

    private static RuntimeException failure(Exception e) {
        return new IllegalStateException("Open Adapt local pair operation failed; existing data was preserved", e);
    }

    private static List parse(String json) throws Exception {
        return (List) Class.forName("f1.b").getMethod("s", JSONArray.class).invoke(null, new JSONArray(json));
    }

    private static void persist(List devices) throws Exception {
        JSONArray json = (JSONArray) Class.forName("f1.b").getMethod("t", List.class).invoke(null, devices);
        if (!preferences().edit().putString(KEY, json.toString()).commit()) {
            throw new IllegalStateException("Unable to persist paired devices");
        }
    }

    private static List legacyPairs(Object store) throws Exception {
        try {
            return (List) store.getClass().getMethod("eAccount", boolean.class).invoke(store, true);
        } catch (InvocationTargetException accountFailure) {
            // A separately signed clone is not entitled to Nike's account data.
            // This exception is tolerated only at that legacy migration boundary.
            if (accountFailure.getCause() instanceof SecurityException) return new ArrayList();
            throw accountFailure;
        }
    }

    public static List read(Object store, boolean includeDeleted) {
        synchronized (LOCK) {
            try {
                SharedPreferences preferences = preferences();
                List devices;
                if (preferences.contains(KEY)) {
                    devices = parse(preferences.getString(KEY, "[]"));
                } else {
                    // The original account reader is retained verbatim under this name.
                    // No account ID is guessed and no empty migration replaces account data.
                    devices = legacyPairs(store);
                    if (!devices.isEmpty()) persist(devices);
                }
                if (includeDeleted) return new ArrayList(devices);
                List visible = new ArrayList();
                for (Object device : devices) {
                    if (!device.getClass().getField("t").getBoolean(device)) visible.add(device);
                }
                return visible;
            } catch (Exception e) { throw failure(e); }
        }
    }

    public static void write(Object store, boolean fromNetwork, List devices) {
        synchronized (LOCK) {
            try {
                List cached = read(store, true);
                Method merge = store.getClass().getMethod(fromNetwork ? "f" : "g", List.class, List.class);
                persist((List) merge.invoke(store, devices, cached));
            } catch (Exception e) { throw failure(e); }
        }
    }

    public static void delete(Object store, List ids) {
        synchronized (LOCK) {
            try {
                List remaining = new ArrayList();
                for (Object device : read(store, true)) {
                    if (!ids.contains(device.getClass().getField("h").get(device))) remaining.add(device);
                }
                persist(remaining);
            } catch (Exception e) { throw failure(e); }
        }
    }

    /** Completes a local repository read using the app's real paired-device result type. */
    public static List list(Object repository, Object identifier, Object listener) {
        try {
            List devices = (List) repository.getClass().getMethod("c").invoke(repository);
            notifyLocal(identifier, listener, devices);
            return devices;
        } catch (Exception e) { throw failure(e); }
    }

    public static void notifyLocal(Object identifier, Object listener, List devices) {
        notifyResult("ea.x", identifier, listener, devices);
    }

    public static void notifyDeleted(Object identifier, Object listener, List devices) {
        notifyResult("ea.z", identifier, listener, devices);
    }

    /** Optional cloud callers may receive an actual cached token or null, never a fake login. */
    public static String cachedAccessToken() {
        try {
            Object companion = singleton("com.nike.adapt.BigfootApplication", "p");
            Object oauth = companion.getClass().getMethod("c").invoke(companion);
            Object manager = oauth.getClass().getField("f").get(oauth);
            Object state = manager.getClass().getMethod("a").invoke(manager);
            Object credential = state.getClass().getMethod("b").invoke(state);
            return credential == null ? null : (String) credential.getClass().getMethod("getAccessToken").invoke(credential);
        } catch (Exception unavailable) { return null; }
    }

    private static void notifyResult(String resultClass, Object identifier, Object listener, List devices) {
        try {
            Object result = Class.forName(resultClass).getConstructor(Class.forName("v9.a"), List.class)
                .newInstance(identifier, devices);
            Class.forName("v9.p0").getMethod("a", Parcelable.class).invoke(listener, result);
        } catch (Exception e) { throw failure(e); }
    }

    /** Startup routes on the UI thread and keeps partial onboarding and actual local credentials. */
    public static void route(final Activity activity) {
        activity.runOnUiThread(new Runnable() {
            public void run() {
                try {
                    if (activity.isFinishing()) return;
                    Object onboarding = singleton("h8.e", "b");
                    Object state = onboarding.getClass().getMethod("k").invoke(onboarding);
                    String stateName = ((Enum) state).name();
                    Class stateClass = Class.forName("v7.g");
                    Object repository = singleton("ab.b", "b");
                    List devices = (List) repository.getClass().getMethod("c").invoke(repository);
                    int destination;
                    Object firmwareCoordinator = singleton("o7.f", "a");
                    Object firmwareStage = firmwareCoordinator.getClass().getMethod("d").invoke(firmwareCoordinator);
                    String firmwareName = firmwareStage == null ? "" : firmwareStage.getClass().getSimpleName();
                    if ("InProgress".equals(firmwareName) || "Reconnecting".equals(firmwareName)
                            || "Flashing".equals(firmwareName) || "FetchingData".equals(firmwareName)) {
                        destination = 4; // Preserve recovery for a transfer already running.
                    } else if ("COMPLETED".equals(stateName) && !devices.isEmpty()) {
                        destination = 2; // Existing ShoeControllerActivity, which reconnects real saved devices.
                    } else {
                        if ("NOT_STARTED".equals(stateName) || "FETCH_PROFILE".equals(stateName)
                                || ("COMPLETED".equals(stateName) && devices.isEmpty())) {
                            Object welcome = Enum.valueOf(stateClass, "WELCOME");
                            onboarding.getClass().getMethod("h", stateClass).invoke(onboarding, welcome);
                        }
                        destination = 3; // Physical BLE pairing remains part of onboarding.
                    }
                    activity.getClass().getField("I").setInt(activity, destination);
                    activity.getClass().getMethod("n0").invoke(activity);
                } catch (Exception e) { throw failure(e); }
            }
        });
    }
}
