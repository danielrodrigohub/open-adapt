.class public final Lt1/c;
.super Ljava/lang/Object;
.source "DependencyDao_Impl.java"

# interfaces
.implements Lt1/b;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lt1/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/q<",
            "Lt1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt1/c;->a:Ly0/d0;

    .line 3
    new-instance v0, Lt1/c$a;

    invoke-direct {v0, p1}, Lt1/c$a;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/c;->b:Lt1/c$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ly0/f0;->t(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lt1/c;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 5
    iget-object p1, p0, Lt1/c;->a:Ly0/d0;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 15
    throw v1
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ly0/f0;->t(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lt1/c;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 5
    iget-object p1, p0, Lt1/c;->a:Ly0/d0;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    .line 7
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v2, v1

    .line 9
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return v2

    :catchall_0
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 13
    throw v1
.end method
