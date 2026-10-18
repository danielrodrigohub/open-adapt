package androidx.work.impl;

import a1.e;
import android.content.Context;
import d1.b;
import d1.d;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import t1.c;
import t1.f;
import t1.h;
import t1.i;
import t1.k;
import t1.l;
import t1.m;
import t1.n;
import t1.p;
import t1.q;
import t1.s;
import t1.t;
import y0.d0;
import y0.e0;

/* JADX INFO: loaded from: classes.dex */
public final class WorkDatabase_Impl extends WorkDatabase {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ int f3055v = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public volatile q f3056o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public volatile c f3057p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public volatile t f3058q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public volatile i f3059r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public volatile l f3060s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile n f3061t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile f f3062u;

    public class a extends e0.a {
        public a() {
            super(12);
        }

        @Override // y0.e0.a
        public final void a(b bVar) {
            e1.a aVar = (e1.a) bVar;
            aVar.k("CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            aVar.k("CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            aVar.k("CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            aVar.k("CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB, PRIMARY KEY(`id`))");
            aVar.k("CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            aVar.k("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)");
            aVar.k("CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            aVar.k("CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            aVar.k("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            aVar.k("CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            aVar.k("CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            aVar.k("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            aVar.k("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            aVar.k("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            aVar.k("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, 'c103703e120ae8cc73c9248622f3cd1e')");
        }

        @Override // y0.e0.a
        public final void b(b bVar) {
            e1.a aVar = (e1.a) bVar;
            aVar.k("DROP TABLE IF EXISTS `Dependency`");
            aVar.k("DROP TABLE IF EXISTS `WorkSpec`");
            aVar.k("DROP TABLE IF EXISTS `WorkTag`");
            aVar.k("DROP TABLE IF EXISTS `SystemIdInfo`");
            aVar.k("DROP TABLE IF EXISTS `WorkName`");
            aVar.k("DROP TABLE IF EXISTS `WorkProgress`");
            aVar.k("DROP TABLE IF EXISTS `Preference`");
            WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
            int i10 = WorkDatabase_Impl.f3055v;
            List<d0.b> list = workDatabase_Impl.f18160f;
            if (list != null) {
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Objects.requireNonNull(WorkDatabase_Impl.this.f18160f.get(i11));
                }
            }
        }

        @Override // y0.e0.a
        public final void c() {
            WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
            int i10 = WorkDatabase_Impl.f3055v;
            List<d0.b> list = workDatabase_Impl.f18160f;
            if (list != null) {
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    Objects.requireNonNull(WorkDatabase_Impl.this.f18160f.get(i11));
                }
            }
        }

        @Override // y0.e0.a
        public final void d(b bVar) {
            WorkDatabase_Impl workDatabase_Impl = WorkDatabase_Impl.this;
            int i10 = WorkDatabase_Impl.f3055v;
            workDatabase_Impl.f18155a = bVar;
            e1.a aVar = (e1.a) bVar;
            aVar.k("PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.m(aVar);
            List<d0.b> list = WorkDatabase_Impl.this.f18160f;
            if (list != null) {
                int size = list.size();
                for (int i11 = 0; i11 < size; i11++) {
                    WorkDatabase_Impl.this.f18160f.get(i11).a(aVar);
                }
            }
        }

        @Override // y0.e0.a
        public final void e() {
        }

        @Override // y0.e0.a
        public final void f(b bVar) {
            a1.c.a(bVar);
        }

        @Override // y0.e0.a
        public final e0.b g(b bVar) {
            HashMap map = new HashMap(2);
            map.put("work_spec_id", new e.a("work_spec_id", "TEXT", true, 1, null, 1));
            map.put("prerequisite_id", new e.a("prerequisite_id", "TEXT", true, 2, null, 1));
            HashSet hashSet = new HashSet(2);
            hashSet.add(new e.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            hashSet.add(new e.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("prerequisite_id"), Arrays.asList("id")));
            HashSet hashSet2 = new HashSet(2);
            hashSet2.add(new e.d("index_Dependency_work_spec_id", false, Arrays.asList("work_spec_id"), null));
            hashSet2.add(new e.d("index_Dependency_prerequisite_id", false, Arrays.asList("prerequisite_id"), null));
            e eVar = new e("Dependency", map, hashSet, hashSet2);
            e eVarA = e.a(bVar, "Dependency");
            if (!eVar.equals(eVarA)) {
                return new e0.b(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + eVar + "\n Found:\n" + eVarA);
            }
            HashMap map2 = new HashMap(25);
            map2.put("id", new e.a("id", "TEXT", true, 1, null, 1));
            map2.put("state", new e.a("state", "INTEGER", true, 0, null, 1));
            map2.put("worker_class_name", new e.a("worker_class_name", "TEXT", true, 0, null, 1));
            map2.put("input_merger_class_name", new e.a("input_merger_class_name", "TEXT", false, 0, null, 1));
            map2.put("input", new e.a("input", "BLOB", true, 0, null, 1));
            map2.put("output", new e.a("output", "BLOB", true, 0, null, 1));
            map2.put("initial_delay", new e.a("initial_delay", "INTEGER", true, 0, null, 1));
            map2.put("interval_duration", new e.a("interval_duration", "INTEGER", true, 0, null, 1));
            map2.put("flex_duration", new e.a("flex_duration", "INTEGER", true, 0, null, 1));
            map2.put("run_attempt_count", new e.a("run_attempt_count", "INTEGER", true, 0, null, 1));
            map2.put("backoff_policy", new e.a("backoff_policy", "INTEGER", true, 0, null, 1));
            map2.put("backoff_delay_duration", new e.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            map2.put("period_start_time", new e.a("period_start_time", "INTEGER", true, 0, null, 1));
            map2.put("minimum_retention_duration", new e.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            map2.put("schedule_requested_at", new e.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            map2.put("run_in_foreground", new e.a("run_in_foreground", "INTEGER", true, 0, null, 1));
            map2.put("out_of_quota_policy", new e.a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            map2.put("required_network_type", new e.a("required_network_type", "INTEGER", false, 0, null, 1));
            map2.put("requires_charging", new e.a("requires_charging", "INTEGER", true, 0, null, 1));
            map2.put("requires_device_idle", new e.a("requires_device_idle", "INTEGER", true, 0, null, 1));
            map2.put("requires_battery_not_low", new e.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            map2.put("requires_storage_not_low", new e.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            map2.put("trigger_content_update_delay", new e.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            map2.put("trigger_max_content_delay", new e.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            map2.put("content_uri_triggers", new e.a("content_uri_triggers", "BLOB", false, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(2);
            hashSet4.add(new e.d("index_WorkSpec_schedule_requested_at", false, Arrays.asList("schedule_requested_at"), null));
            hashSet4.add(new e.d("index_WorkSpec_period_start_time", false, Arrays.asList("period_start_time"), null));
            e eVar2 = new e("WorkSpec", map2, hashSet3, hashSet4);
            e eVarA2 = e.a(bVar, "WorkSpec");
            if (!eVar2.equals(eVarA2)) {
                return new e0.b(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + eVar2 + "\n Found:\n" + eVarA2);
            }
            HashMap map3 = new HashMap(2);
            map3.put("tag", new e.a("tag", "TEXT", true, 1, null, 1));
            map3.put("work_spec_id", new e.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet5 = new HashSet(1);
            hashSet5.add(new e.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet6 = new HashSet(1);
            hashSet6.add(new e.d("index_WorkTag_work_spec_id", false, Arrays.asList("work_spec_id"), null));
            e eVar3 = new e("WorkTag", map3, hashSet5, hashSet6);
            e eVarA3 = e.a(bVar, "WorkTag");
            if (!eVar3.equals(eVarA3)) {
                return new e0.b(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + eVar3 + "\n Found:\n" + eVarA3);
            }
            HashMap map4 = new HashMap(2);
            map4.put("work_spec_id", new e.a("work_spec_id", "TEXT", true, 1, null, 1));
            map4.put("system_id", new e.a("system_id", "INTEGER", true, 0, null, 1));
            HashSet hashSet7 = new HashSet(1);
            hashSet7.add(new e.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            e eVar4 = new e("SystemIdInfo", map4, hashSet7, new HashSet(0));
            e eVarA4 = e.a(bVar, "SystemIdInfo");
            if (!eVar4.equals(eVarA4)) {
                return new e0.b(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + eVar4 + "\n Found:\n" + eVarA4);
            }
            HashMap map5 = new HashMap(2);
            map5.put("name", new e.a("name", "TEXT", true, 1, null, 1));
            map5.put("work_spec_id", new e.a("work_spec_id", "TEXT", true, 2, null, 1));
            HashSet hashSet8 = new HashSet(1);
            hashSet8.add(new e.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            HashSet hashSet9 = new HashSet(1);
            hashSet9.add(new e.d("index_WorkName_work_spec_id", false, Arrays.asList("work_spec_id"), null));
            e eVar5 = new e("WorkName", map5, hashSet8, hashSet9);
            e eVarA5 = e.a(bVar, "WorkName");
            if (!eVar5.equals(eVarA5)) {
                return new e0.b(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + eVar5 + "\n Found:\n" + eVarA5);
            }
            HashMap map6 = new HashMap(2);
            map6.put("work_spec_id", new e.a("work_spec_id", "TEXT", true, 1, null, 1));
            map6.put("progress", new e.a("progress", "BLOB", true, 0, null, 1));
            HashSet hashSet10 = new HashSet(1);
            hashSet10.add(new e.b("WorkSpec", "CASCADE", "CASCADE", Arrays.asList("work_spec_id"), Arrays.asList("id")));
            e eVar6 = new e("WorkProgress", map6, hashSet10, new HashSet(0));
            e eVarA6 = e.a(bVar, "WorkProgress");
            if (!eVar6.equals(eVarA6)) {
                return new e0.b(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + eVar6 + "\n Found:\n" + eVarA6);
            }
            HashMap map7 = new HashMap(2);
            map7.put("key", new e.a("key", "TEXT", true, 1, null, 1));
            map7.put("long_value", new e.a("long_value", "INTEGER", false, 0, null, 1));
            e eVar7 = new e("Preference", map7, new HashSet(0), new HashSet(0));
            e eVarA7 = e.a(bVar, "Preference");
            if (eVar7.equals(eVarA7)) {
                return new e0.b(true, null);
            }
            return new e0.b(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + eVar7 + "\n Found:\n" + eVarA7);
        }
    }

    @Override // y0.d0
    public final androidx.room.c e() {
        return new androidx.room.c(this, new HashMap(0), new HashMap(0), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }

    @Override // y0.d0
    public final d f(y0.n nVar) {
        e0 e0Var = new e0(nVar, new a(), "c103703e120ae8cc73c9248622f3cd1e", "49f946663a8deb7054212b8adda248c6");
        Context context = nVar.f18257b;
        String str = nVar.f18258c;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        return nVar.f18256a.a(new d.b(context, str, e0Var, false));
    }

    @Override // androidx.work.impl.WorkDatabase
    public final t1.b r() {
        c cVar;
        if (this.f3057p != null) {
            return this.f3057p;
        }
        synchronized (this) {
            if (this.f3057p == null) {
                this.f3057p = new c(this);
            }
            cVar = this.f3057p;
        }
        return cVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final t1.e s() {
        f fVar;
        if (this.f3062u != null) {
            return this.f3062u;
        }
        synchronized (this) {
            if (this.f3062u == null) {
                this.f3062u = new f(this);
            }
            fVar = this.f3062u;
        }
        return fVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final h t() {
        i iVar;
        if (this.f3059r != null) {
            return this.f3059r;
        }
        synchronized (this) {
            if (this.f3059r == null) {
                this.f3059r = new i(this);
            }
            iVar = this.f3059r;
        }
        return iVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final k u() {
        l lVar;
        if (this.f3060s != null) {
            return this.f3060s;
        }
        synchronized (this) {
            if (this.f3060s == null) {
                this.f3060s = new l(this);
            }
            lVar = this.f3060s;
        }
        return lVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final m v() {
        n nVar;
        if (this.f3061t != null) {
            return this.f3061t;
        }
        synchronized (this) {
            if (this.f3061t == null) {
                this.f3061t = new n(this);
            }
            nVar = this.f3061t;
        }
        return nVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final p w() {
        q qVar;
        if (this.f3056o != null) {
            return this.f3056o;
        }
        synchronized (this) {
            if (this.f3056o == null) {
                this.f3056o = new q(this);
            }
            qVar = this.f3056o;
        }
        return qVar;
    }

    @Override // androidx.work.impl.WorkDatabase
    public final s x() {
        t tVar;
        if (this.f3058q != null) {
            return this.f3058q;
        }
        synchronized (this) {
            if (this.f3058q == null) {
                this.f3058q = new t(this);
            }
            tVar = this.f3058q;
        }
        return tVar;
    }
}
