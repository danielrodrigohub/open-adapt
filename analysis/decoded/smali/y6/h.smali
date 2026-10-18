.class public final Ly6/h;
.super Ljava/lang/Object;
.source "KeysetManager.java"


# instance fields
.field public final a:La7/n$a;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(La7/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly6/h;->a:La7/n$a;

    return-void
.end method

.method public static e()I
    .locals 5

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return v3
.end method

.method public static f(Ly6/g;)Ly6/h;
    .locals 2

    .line 1
    new-instance v0, Ly6/h;

    .line 2
    iget-object p0, p0, Ly6/g;->a:La7/n;

    .line 3
    sget-object v1, Lb7/x$f;->l:Lb7/x$f;

    .line 4
    invoke-virtual {p0, v1}, La7/n;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lb7/x$a;

    .line 6
    invoke-virtual {v1, p0}, Lb7/x$a;->k(Lb7/x;)Lb7/x$a;

    .line 7
    check-cast v1, La7/n$a;

    invoke-direct {v0, v1}, Ly6/h;-><init>(La7/n$a;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(La7/l;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ly6/h;->d(La7/l;)La7/n$b;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ly6/h;->a:La7/n$a;

    .line 3
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 4
    iget-object v0, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v0, La7/n;

    invoke-static {v0, p1}, La7/n;->z(La7/n;La7/n$b;)V

    .line 5
    invoke-virtual {p1}, La7/n$b;->D()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Ly6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly6/h;->a:La7/n$a;

    invoke-virtual {v0}, Lb7/x$a;->h()Lb7/x;

    move-result-object v0

    check-cast v0, La7/n;

    invoke-static {v0}, Ly6/g;->a(La7/n;)Ly6/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ly6/h;->a:La7/n$a;

    .line 2
    iget-object v0, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v0, La7/n;

    .line 3
    invoke-virtual {v0}, La7/n;->C()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La7/n$b;

    .line 6
    invoke-virtual {v1}, La7/n$b;->D()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    .line 7
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 8
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(La7/l;)La7/n$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Ly6/m;->c(La7/l;)La7/j;

    move-result-object v0

    .line 2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-static {}, Ly6/h;->e()I

    move-result v1

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, Ly6/h;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Ly6/h;->e()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 7
    invoke-virtual {p1}, La7/l;->B()La7/p;

    move-result-object p1

    .line 8
    sget-object v2, La7/p;->i:La7/p;

    if-ne p1, v2, :cond_1

    .line 9
    sget-object p1, La7/p;->j:La7/p;

    .line 10
    :cond_1
    invoke-static {}, La7/n$b;->H()La7/n$b$a;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 12
    iget-object v3, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v3, La7/n$b;

    invoke-static {v3, v0}, La7/n$b;->y(La7/n$b;La7/j;)V

    .line 13
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 14
    iget-object v0, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v0, La7/n$b;

    invoke-static {v0, v1}, La7/n$b;->B(La7/n$b;I)V

    .line 15
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 16
    iget-object v0, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v0, La7/n$b;

    invoke-static {v0}, La7/n$b;->A(La7/n$b;)V

    .line 17
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 18
    iget-object v0, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v0, La7/n$b;

    invoke-static {v0, p1}, La7/n$b;->z(La7/n$b;La7/p;)V

    .line 19
    invoke-virtual {v2}, Lb7/x$a;->h()Lb7/x;

    move-result-object p1

    check-cast p1, La7/n$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit p0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
