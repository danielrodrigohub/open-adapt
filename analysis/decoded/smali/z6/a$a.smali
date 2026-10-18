.class public final Lz6/a$a;
.super Ljava/lang/Object;
.source "AndroidKeysetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lz6/d;

.field public b:Lz6/e;

.field public c:Ljava/lang/String;

.field public d:Lz6/b;

.field public e:Ly6/e;

.field public f:Ly6/h;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lz6/a$a;->a:Lz6/d;

    .line 3
    iput-object v0, p0, Lz6/a$a;->b:Lz6/e;

    .line 4
    iput-object v0, p0, Lz6/a$a;->c:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lz6/a$a;->d:Lz6/b;

    .line 6
    iput-object v0, p0, Lz6/a$a;->e:Ly6/e;

    return-void
.end method


# virtual methods
.method public final a()Ly6/h;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lz6/a$a;->d:Lz6/b;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lz6/a$a;->a:Lz6/d;

    invoke-static {v1, v0}, Ly6/g;->b(Lz6/d;Ly6/a;)Ly6/g;

    move-result-object v0

    invoke-static {v0}, Ly6/h;->f(Ly6/g;)Ly6/h;

    move-result-object v0
    :try_end_1
    .catch Lb7/a0; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    :try_start_2
    sget v1, Lz6/a;->b:I

    const-string v1, "a"

    const-string v2, "cannot decrypt keyset: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lz6/a$a;->a:Lz6/d;

    .line 5
    invoke-virtual {v0}, Lz6/d;->a()[B

    move-result-object v0

    invoke-static {}, Lb7/p;->a()Lb7/p;

    move-result-object v1

    invoke-static {v0, v1}, La7/n;->F([BLb7/p;)La7/n;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ly6/g;->a(La7/n;)Ly6/g;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ly6/h;->f(Ly6/g;)Ly6/h;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-object v0

    :catch_2
    move-exception v0

    .line 8
    sget v1, Lz6/a;->b:I

    const-string v1, "a"

    const-string v2, "keyset not found, will generate a new one"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    iget-object v0, p0, Lz6/a$a;->e:Ly6/e;

    if-eqz v0, :cond_8

    .line 10
    new-instance v0, Ly6/h;

    invoke-static {}, La7/n;->E()La7/n$a;

    move-result-object v1

    invoke-direct {v0, v1}, Ly6/h;-><init>(La7/n$a;)V

    .line 11
    iget-object v1, p0, Lz6/a$a;->e:Ly6/e;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_3
    iget-object v1, v1, Ly6/e;->a:La7/l;

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ly6/h;->a(La7/l;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    monitor-exit v0

    .line 16
    invoke-virtual {v0}, Ly6/h;->b()Ly6/g;

    move-result-object v1

    .line 17
    iget-object v1, v1, Ly6/g;->a:La7/n;

    invoke-static {v1}, Ly6/o;->a(La7/n;)La7/o;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, La7/o;->A()La7/o$b;

    move-result-object v1

    invoke-virtual {v1}, La7/o$b;->C()I

    move-result v1

    .line 19
    monitor-enter v0

    move v3, v2

    .line 20
    :goto_2
    :try_start_4
    iget-object v4, v0, Ly6/h;->a:La7/n$a;

    .line 21
    iget-object v4, v4, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/n;

    invoke-virtual {v4}, La7/n;->B()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 22
    iget-object v4, v0, Ly6/h;->a:La7/n$a;

    .line 23
    iget-object v4, v4, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/n;

    invoke-virtual {v4, v3}, La7/n;->A(I)La7/n$b;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, La7/n$b;->D()I

    move-result v5

    if-ne v5, v1, :cond_6

    .line 25
    invoke-virtual {v4}, La7/n$b;->F()La7/k;

    move-result-object v3

    sget-object v4, La7/k;->j:La7/k;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 26
    iget-object v3, v0, Ly6/h;->a:La7/n$a;

    .line 27
    invoke-virtual {v3}, Lb7/x$a;->j()V

    .line 28
    iget-object v3, v3, Lb7/x$a;->i:Lb7/x;

    check-cast v3, La7/n;

    invoke-static {v3, v1}, La7/n;->y(La7/n;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    monitor-exit v0

    .line 30
    iget-object v1, p0, Lz6/a$a;->d:Lz6/b;

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v0}, Ly6/h;->b()Ly6/g;

    move-result-object v1

    iget-object v3, p0, Lz6/a$a;->b:Lz6/e;

    iget-object v4, p0, Lz6/a$a;->d:Lz6/b;

    .line 32
    iget-object v1, v1, Ly6/g;->a:La7/n;

    .line 33
    invoke-virtual {v1}, Lb7/a;->l()[B

    move-result-object v5

    new-array v6, v2, [B

    invoke-virtual {v4, v5, v6}, Lz6/b;->c([B[B)[B

    move-result-object v5

    :try_start_5
    new-array v6, v2, [B

    .line 34
    invoke-virtual {v4, v5, v6}, Lz6/b;->a([B[B)[B

    move-result-object v4

    .line 35
    invoke-static {}, Lb7/p;->a()Lb7/p;

    move-result-object v6

    .line 36
    invoke-static {v4, v6}, La7/n;->F([BLb7/p;)La7/n;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v1}, Lb7/x;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_5
    .catch Lb7/a0; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v4, :cond_2

    .line 38
    invoke-static {}, La7/g;->B()La7/g$a;

    move-result-object v4

    .line 39
    array-length v6, v5

    invoke-static {v5, v2, v6}, Lb7/i;->l([BII)Lb7/i;

    move-result-object v2

    .line 40
    invoke-virtual {v4}, Lb7/x$a;->j()V

    .line 41
    iget-object v5, v4, Lb7/x$a;->i:Lb7/x;

    check-cast v5, La7/g;

    invoke-static {v5, v2}, La7/g;->y(La7/g;Lb7/i;)V

    .line 42
    invoke-static {v1}, Ly6/o;->a(La7/n;)La7/o;

    move-result-object v1

    .line 43
    invoke-virtual {v4}, Lb7/x$a;->j()V

    .line 44
    iget-object v2, v4, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/g;

    invoke-static {v2, v1}, La7/g;->z(La7/g;La7/o;)V

    .line 45
    invoke-virtual {v4}, Lb7/x$a;->h()Lb7/x;

    move-result-object v1

    check-cast v1, La7/g;

    .line 46
    iget-object v2, v3, Lz6/e;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v3, v3, Lz6/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lb7/a;->l()[B

    move-result-object v1

    invoke-static {v1}, Lp4/h;->o([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 47
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to write to SharedPreferences"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    :try_start_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot encrypt keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lb7/a0; {:try_start_6 .. :try_end_6} :catch_3

    .line 49
    :catch_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid keyset, corrupted key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3
    invoke-virtual {v0}, Ly6/h;->b()Ly6/g;

    move-result-object v1

    iget-object v2, p0, Lz6/a$a;->b:Lz6/e;

    .line 51
    iget-object v1, v1, Ly6/g;->a:La7/n;

    .line 52
    iget-object v3, v2, Lz6/e;->a:Landroid/content/SharedPreferences$Editor;

    iget-object v2, v2, Lz6/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lb7/a;->l()[B

    move-result-object v1

    invoke-static {v1}, Lp4/h;->o([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    return-object v0

    .line 53
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to write to SharedPreferences"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_5
    :try_start_7
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot set key as primary because it\'s not enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 55
    :cond_7
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 56
    monitor-exit v0

    throw v1

    .line 57
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot read or generate keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ly6/a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "a"

    .line 1
    sget v1, Lz6/a;->b:I

    .line 2
    new-instance v1, Lz6/c;

    invoke-direct {v1}, Lz6/c;-><init>()V

    .line 3
    iget-object v2, p0, Lz6/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lz6/c;->c(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "cannot use Android Keystore, it\'ll be disabled"

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    iget-object v5, p0, Lz6/a$a;->c:Ljava/lang/String;

    invoke-static {v5}, Lz6/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    sget v2, Lz6/a;->b:I

    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    .line 6
    :cond_0
    :goto_1
    :try_start_1
    iget-object v5, p0, Lz6/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lz6/c;->b(Ljava/lang/String;)Ly6/a;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    :goto_2
    if-nez v2, :cond_1

    .line 7
    sget v2, Lz6/a;->b:I

    invoke-static {v0, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    .line 8
    :cond_1
    new-instance v0, Ljava/security/KeyStoreException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lz6/a$a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "the master key %s exists but is unusable"

    .line 9
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
