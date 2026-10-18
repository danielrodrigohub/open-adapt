.class public final Lt1/f;
.super Ljava/lang/Object;
.source "PreferenceDao_Impl.java"

# interfaces
.implements Lt1/e;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lt1/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly0/q<",
            "Lt1/d;",
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
    iput-object p1, p0, Lt1/f;->a:Ly0/d0;

    .line 3
    new-instance v0, Lt1/f$a;

    invoke-direct {v0, p1}, Lt1/f$a;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/f;->b:Lt1/f$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ly0/f0;->f0(Ljava/lang/String;I)Ly0/f0;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ly0/f0;->l(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lt1/f;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->b()V

    .line 4
    iget-object p1, p0, Lt1/f;->a:Ly0/d0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ly0/d0;->o(Ld1/f;)Landroid/database/Cursor;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Ly0/f0;->g0()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ly0/f0;->g0()V

    .line 13
    throw v1
.end method

.method public final b(Lt1/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt1/f;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/f;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lt1/f;->b:Lt1/f$a;

    invoke-virtual {v0, p1}, Ly0/q;->f(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lt1/f;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lt1/f;->a:Ly0/d0;

    .line 6
    invoke-virtual {p1}, Ly0/d0;->l()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lt1/f;->a:Ly0/d0;

    .line 8
    invoke-virtual {v0}, Ly0/d0;->l()V

    .line 9
    throw p1
.end method
