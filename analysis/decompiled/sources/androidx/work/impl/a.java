package androidx.work.impl;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: compiled from: WorkDatabaseMigrations.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static C0045a f3064a = new C0045a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static b f3065b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static c f3066c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static d f3067d = new d();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static e f3068e = new e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static f f3069f = new f();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static g f3070g = new g();

    /* JADX INFO: renamed from: androidx.work.impl.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class C0045a extends z0.b {
        public C0045a() {
            super(1, 2);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            e1.a aVar = (e1.a) bVar;
            aVar.k("CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            aVar.k("INSERT INTO SystemIdInfo(work_spec_id, system_id) SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo");
            aVar.k("DROP TABLE IF EXISTS alarmInfo");
            aVar.k("INSERT OR IGNORE INTO worktag(tag, work_spec_id) SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class b extends z0.b {
        public b() {
            super(3, 4);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            ((e1.a) bVar).k("UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class c extends z0.b {
        public c() {
            super(4, 5);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            e1.a aVar = (e1.a) bVar;
            aVar.k("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
            aVar.k("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class d extends z0.b {
        public d() {
            super(6, 7);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            ((e1.a) bVar).k("CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class e extends z0.b {
        public e() {
            super(7, 8);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            ((e1.a) bVar).k("CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec` (`period_start_time`)");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class f extends z0.b {
        public f() {
            super(8, 9);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            ((e1.a) bVar).k("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public class g extends z0.b {
        public g() {
            super(11, 12);
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            ((e1.a) bVar).k("ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0");
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public static class h extends z0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f3071c;

        public h(Context context, int i10, int i11) {
            super(i10, i11);
            this.f3071c = context;
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            if (this.f19251b >= 10) {
                ((e1.a) bVar).O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", 1});
            } else {
                this.f3071c.getSharedPreferences("androidx.work.util.preferences", 0).edit().putBoolean("reschedule_needed", true).apply();
            }
        }
    }

    /* JADX INFO: compiled from: WorkDatabaseMigrations.java */
    public static class i extends z0.b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f3072c;

        public i(Context context) {
            super(9, 10);
            this.f3072c = context;
        }

        @Override // z0.b
        public final void a(d1.b bVar) {
            e1.a aVar = (e1.a) bVar;
            aVar.k("CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            SharedPreferences sharedPreferences = this.f3072c.getSharedPreferences("androidx.work.util.preferences", 0);
            if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
                long j10 = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
                long j11 = sharedPreferences.getBoolean("reschedule_needed", false) ? 1L : 0L;
                aVar.e();
                try {
                    aVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j10)});
                    aVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(j11)});
                    sharedPreferences.edit().clear().apply();
                    aVar.L();
                    aVar.d();
                } catch (Throwable th) {
                    aVar.d();
                    throw th;
                }
            }
            SharedPreferences sharedPreferences2 = this.f3072c.getSharedPreferences("androidx.work.util.id", 0);
            if (sharedPreferences2.contains("next_job_scheduler_id") || sharedPreferences2.contains("next_job_scheduler_id")) {
                int i10 = sharedPreferences2.getInt("next_job_scheduler_id", 0);
                int i11 = sharedPreferences2.getInt("next_alarm_manager_id", 0);
                aVar.e();
                try {
                    aVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i10)});
                    aVar.O("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i11)});
                    sharedPreferences2.edit().clear().apply();
                    aVar.L();
                } finally {
                    aVar.d();
                }
            }
        }
    }
}
