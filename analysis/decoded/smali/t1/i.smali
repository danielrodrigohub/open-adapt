.class public final Lt1/i;
.super Ljava/lang/Object;
.source "SystemIdInfoDao_Impl.java"

# interfaces
.implements Lt1/h;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lt1/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/q<",
            "Lt1/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lt1/i$b;


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt1/i;->a:Ly0/d0;

    .line 3
    new-instance v0, Lt1/i$a;

    invoke-direct {v0, p1}, Lt1/i$a;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/i;->b:Lt1/i$a;

    .line 4
    new-instance v0, Lt1/i$b;

    invoke-direct {v0, p1}, Lt1/i$b;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/i;->c:Lt1/i$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lt1/g;
    .locals 5

    const-string v0, "SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?"

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
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 5
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v2, "work_spec_id"

    .line 7
    invoke-static {p1, v2}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "system_id"

    .line 8
    invoke-static {p1, v3}, La1/b;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 12
    new-instance v3, Lt1/g;

    invoke-direct {v3, v1, v2}, Lt1/g;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 13
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 17
    throw v1
.end method

.method public final b(Lt1/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lt1/i;->b:Lt1/i$a;

    invoke-virtual {v0, p1}, Ly0/q;->f(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    .line 6
    invoke-virtual {p1}, Ly0/d0;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lt1/i;->a:Ly0/d0;

    .line 8
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 9
    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/i;->c:Lt1/i$b;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    .line 7
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lt1/i;->a:Ly0/d0;

    .line 9
    invoke-virtual {p1}, Ly0/d0;->l()V

    .line 10
    iget-object p1, p0, Lt1/i;->c:Lt1/i$b;

    invoke-virtual {p1, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lt1/i;->a:Ly0/d0;

    .line 12
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 13
    iget-object v1, p0, Lt1/i;->c:Lt1/i$b;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 14
    throw p1
.end method
