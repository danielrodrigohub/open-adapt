.class public final Ly0/e0;
.super Ld1/d$a;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/e0$b;,
        Ly0/e0$a;
    }
.end annotation


# instance fields
.field public b:Ly0/n;

.field public final c:Ly0/e0$a;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ly0/n;Ly0/e0$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p2, Ly0/e0$a;->a:I

    invoke-direct {p0, v0}, Ld1/d$a;-><init>(I)V

    .line 2
    iput-object p1, p0, Ly0/e0;->b:Ly0/n;

    .line 3
    iput-object p2, p0, Ly0/e0;->c:Ly0/e0$a;

    .line 4
    iput-object p3, p0, Ly0/e0;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Ly0/e0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Ld1/b;)V
    .locals 3

    .line 1
    check-cast p1, Le1/a;

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-virtual {p1, v0}, Le1/a;->b0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 3
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4
    iget-object v0, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v0, p1}, Ly0/e0$a;->a(Ld1/b;)V

    if-nez v2, :cond_2

    .line 5
    iget-object v0, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v0, p1}, Ly0/e0$a;->g(Ld1/b;)Ly0/e0$b;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Ly0/e0$b;->a:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Pre-packaged database has an invalid schema: "

    .line 8
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v0, v0, Ly0/e0$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Ly0/e0;->g(Ld1/b;)V

    .line 11
    iget-object p1, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {p1}, Ly0/e0$a;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 13
    throw p1
.end method

.method public final d(Ld1/b;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ly0/e0;->f(Ld1/b;II)V

    return-void
.end method

.method public final e(Ld1/b;)V
    .locals 4

    .line 1
    check-cast p1, Le1/a;

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-virtual {p1, v0}, Le1/a;->b0(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 4
    new-instance v1, Ld1/a;

    const-string v3, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v3}, Ld1/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ld1/b;->M(Ld1/f;)Landroid/database/Cursor;

    move-result-object v1

    .line 5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 7
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8
    iget-object v1, p0, Ly0/e0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Ly0/e0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 11
    throw p1

    .line 12
    :cond_3
    iget-object v1, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v1, p1}, Ly0/e0$a;->g(Ld1/b;)Ly0/e0$b;

    move-result-object v1

    .line 13
    iget-boolean v2, v1, Ly0/e0$b;->a:Z

    if-eqz v2, :cond_5

    .line 14
    iget-object v1, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v1}, Ly0/e0$a;->e()V

    .line 15
    invoke-virtual {p0, p1}, Ly0/e0;->g(Ld1/b;)V

    .line 16
    :cond_4
    :goto_2
    iget-object v1, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v1, p1}, Ly0/e0$a;->d(Ld1/b;)V

    .line 17
    iput-object v0, p0, Ly0/e0;->b:Ly0/n;

    return-void

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Pre-packaged database has an invalid schema: "

    .line 19
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    iget-object v1, v1, Ly0/e0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 22
    throw p1
.end method

.method public final f(Ld1/b;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Ly0/e0;->b:Ly0/n;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v0, Ly0/n;->d:Ly0/d0$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p2, p3, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_7

    :cond_0
    if-le p3, p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 4
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, p2

    :cond_2
    if-eqz v3, :cond_3

    if-ge v5, p3, :cond_a

    goto :goto_1

    :cond_3
    if-le v5, p3, :cond_a

    .line 5
    :goto_1
    iget-object v6, v0, Ly0/d0$c;->a:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/TreeMap;

    const/4 v7, 0x0

    if-nez v6, :cond_4

    goto :goto_6

    :cond_4
    if-eqz v3, :cond_5

    .line 6
    invoke-virtual {v6}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v8

    goto :goto_2

    .line 7
    :cond_5
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 8
    :goto_2
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v3, :cond_7

    if-gt v9, p3, :cond_8

    if-le v9, v5, :cond_8

    goto :goto_3

    :cond_7
    if-lt v9, p3, :cond_8

    if-ge v9, v5, :cond_8

    :goto_3
    move v10, v1

    goto :goto_4

    :cond_8
    move v10, v2

    :goto_4
    if-eqz v10, :cond_6

    .line 9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz0/b;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v1

    move v5, v9

    goto :goto_5

    :cond_9
    move v6, v2

    :goto_5
    if-nez v6, :cond_2

    :goto_6
    move-object v0, v7

    goto :goto_7

    :cond_a
    move-object v0, v4

    :goto_7
    if-eqz v0, :cond_d

    .line 10
    iget-object v2, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v2, p1}, Ly0/e0$a;->f(Ld1/b;)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz0/b;

    .line 12
    invoke-virtual {v2, p1}, Lz0/b;->a(Ld1/b;)V

    goto :goto_8

    .line 13
    :cond_b
    iget-object v0, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v0, p1}, Ly0/e0$a;->g(Ld1/b;)Ly0/e0$b;

    move-result-object v0

    .line 14
    iget-boolean v2, v0, Ly0/e0$b;->a:Z

    if-eqz v2, :cond_c

    .line 15
    iget-object v0, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {v0}, Ly0/e0$a;->e()V

    .line 16
    invoke-virtual {p0, p1}, Ly0/e0;->g(Ld1/b;)V

    goto :goto_9

    .line 17
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Migration didn\'t properly handle: "

    .line 18
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 19
    iget-object p3, v0, Ly0/e0$b;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    move v1, v2

    :goto_9
    if-nez v1, :cond_f

    .line 20
    iget-object v0, p0, Ly0/e0;->b:Ly0/n;

    if-eqz v0, :cond_e

    .line 21
    invoke-virtual {v0, p2, p3}, Ly0/n;->a(II)Z

    move-result v0

    if-nez v0, :cond_e

    .line 22
    iget-object p2, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {p2, p1}, Ly0/e0$a;->b(Ld1/b;)V

    .line 23
    iget-object p2, p0, Ly0/e0;->c:Ly0/e0$a;

    invoke-virtual {p2, p1}, Ly0/e0$a;->a(Ld1/b;)V

    goto :goto_a

    .line 24
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_a
    return-void
.end method

.method public final g(Ld1/b;)V
    .locals 3

    .line 1
    check-cast p1, Le1/a;

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v0}, Le1/a;->k(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ly0/e0;->d:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {p1, v0}, Ld1/b;->k(Ljava/lang/String;)V

    return-void
.end method
