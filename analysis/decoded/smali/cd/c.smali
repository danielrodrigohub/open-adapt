.class public final Lcd/c;
.super Ljava/lang/Object;
.source "SecureFileProvider.kt"

# interfaces
.implements Lcd/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    sget-object v0, Lc1/b;->a:Landroid/security/keystore/KeyGenParameterSpec;

    .line 2
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_6

    .line 3
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCM"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 5
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoPadding"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "per-operation authentication is not supported (UserAuthenticationValidityDurationSeconds must be >0)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AndroidKeyStore"

    .line 10
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 12
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AES"

    .line 13
    invoke-static {v1, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 15
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 16
    :cond_2
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getOrCreate(MasterKeys.AES256_GCM_SPEC)"

    .line 17
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "applicationContext"

    .line 18
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcd/c;->a:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcd/c;->b:Ljava/lang/String;

    return-void

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid padding mode, want NoPadding got "

    .line 23
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid purposes mode, want PURPOSE_ENCRYPT | PURPOSE_DECRYPT got "

    .line 26
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid block mode, want GCM got "

    .line 29
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid key size, want 256 bits got "

    .line 32
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bits"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/lang/String;Z)Lcd/f;
    .locals 12

    const-class v0, Ly6/n;

    const-string v1, "directory"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fileName"

    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcd/c;->a:Landroid/content/Context;

    .line 5
    iget-object p2, p0, Lcd/c;->b:Ljava/lang/String;

    .line 6
    sget-object p3, Lc1/a$c;->i:Lc1/a$c;

    .line 7
    invoke-static {}, Lc7/d;->a()V

    .line 8
    new-instance v2, Lz6/a$a;

    invoke-direct {v2}, Lz6/a$a;-><init>()V

    .line 9
    iget-object p3, p3, Lc1/a$c;->h:Ly6/e;

    .line 10
    iput-object p3, v2, Lz6/a$a;->e:Ly6/e;

    if-eqz p1, :cond_22

    .line 11
    new-instance p3, Lz6/d;

    invoke-direct {p3, p1}, Lz6/d;-><init>(Landroid/content/Context;)V

    iput-object p3, v2, Lz6/a$a;->a:Lz6/d;

    .line 12
    new-instance p3, Lz6/e;

    invoke-direct {p3, p1}, Lz6/e;-><init>(Landroid/content/Context;)V

    iput-object p3, v2, Lz6/a$a;->b:Lz6/e;

    const-string p1, "android-keystore://"

    .line 13
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android-keystore://"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    .line 15
    iput-object p1, v2, Lz6/a$a;->c:Ljava/lang/String;

    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object p1, v2, Lz6/a$a;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {v2}, Lz6/a$a;->b()Ly6/a;

    move-result-object p1

    check-cast p1, Lz6/b;

    iput-object p1, v2, Lz6/a$a;->d:Lz6/b;

    .line 19
    :cond_1
    invoke-virtual {v2}, Lz6/a$a;->a()Ly6/h;

    move-result-object p1

    iput-object p1, v2, Lz6/a$a;->f:Ly6/h;

    .line 20
    new-instance p1, Lz6/a;

    invoke-direct {p1, v2}, Lz6/a;-><init>(Lz6/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    .line 21
    monitor-enter p1

    .line 22
    :try_start_1
    iget-object p2, p1, Lz6/a;->a:Ly6/h;

    invoke-virtual {p2}, Ly6/h;->b()Ly6/g;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    .line 23
    sget-object p1, Ly6/m;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/j;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 24
    :cond_2
    invoke-interface {p1}, Ly6/j;->a()V

    move-object p1, v0

    :goto_0
    const-string p3, "No wrapper found for "

    if-eqz p1, :cond_20

    .line 25
    sget-object v2, Ly6/m;->a:Ljava/util/logging/Logger;

    .line 26
    sget-object v2, La7/k;->j:La7/k;

    iget-object v3, p2, Ly6/g;->a:La7/n;

    .line 27
    sget v4, Ly6/o;->a:I

    .line 28
    invoke-virtual {v3}, La7/n;->D()I

    move-result v4

    .line 29
    invoke-virtual {v3}, La7/n;->C()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, La7/n$b;

    .line 30
    invoke-virtual {v9}, La7/n$b;->F()La7/k;

    move-result-object v10

    if-eq v10, v2, :cond_3

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {v9}, La7/n$b;->G()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 32
    invoke-virtual {v9}, La7/n$b;->E()La7/p;

    move-result-object v10

    sget-object v11, La7/p;->i:La7/p;

    if-eq v10, v11, :cond_8

    .line 33
    invoke-virtual {v9}, La7/n$b;->F()La7/k;

    move-result-object v10

    sget-object v11, La7/k;->i:La7/k;

    if-eq v10, v11, :cond_7

    .line 34
    invoke-virtual {v9}, La7/n$b;->D()I

    move-result v10

    if-ne v10, v4, :cond_5

    if-nez v7, :cond_4

    move v7, v5

    goto :goto_2

    .line 35
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset contains multiple primary keys"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_5
    :goto_2
    invoke-virtual {v9}, La7/n$b;->C()La7/j;

    move-result-object v9

    invoke-virtual {v9}, La7/j;->C()La7/j$b;

    move-result-object v9

    sget-object v10, La7/j$b;->l:La7/j$b;

    if-eq v9, v10, :cond_6

    const/4 v8, 0x0

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 37
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array p2, v5, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v9}, La7/n$b;->D()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "key %d has unknown status"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    const/4 p1, 0x0

    .line 39
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array p3, v5, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v9}, La7/n$b;->D()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    const-string p1, "key %d has unknown prefix"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    const/4 p1, 0x0

    .line 41
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array p3, v5, [Ljava/lang/Object;

    invoke-virtual {v9}, La7/n$b;->D()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p1

    const-string p1, "key %d has no key data"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    if-eqz v6, :cond_1f

    if-nez v7, :cond_c

    if-eqz v8, :cond_b

    goto :goto_3

    .line 42
    :cond_b
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_c
    :goto_3
    new-instance v3, Ly6/i;

    invoke-direct {v3, p1}, Ly6/i;-><init>(Ljava/lang/Class;)V

    .line 44
    iget-object v4, p2, Ly6/g;->a:La7/n;

    .line 45
    invoke-virtual {v4}, La7/n;->C()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La7/n$b;

    .line 46
    invoke-virtual {v6}, La7/n$b;->F()La7/k;

    move-result-object v7

    if-ne v7, v2, :cond_d

    .line 47
    invoke-virtual {v6}, La7/n$b;->C()La7/j;

    move-result-object v7

    invoke-virtual {v7}, La7/j;->D()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, La7/n$b;->C()La7/j;

    move-result-object v8

    invoke-virtual {v8}, La7/j;->E()Lb7/i;

    move-result-object v8

    .line 48
    invoke-static {v7}, Ly6/m;->b(Ljava/lang/String;)Ly6/m$a;

    move-result-object v7

    .line 49
    invoke-interface {v7}, Ly6/m$a;->d()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 50
    invoke-interface {v7, p1}, Ly6/m$a;->a(Ljava/lang/Class;)Ly6/c;

    move-result-object v7

    .line 51
    check-cast v7, Ly6/d;

    invoke-virtual {v7, v8}, Ly6/d;->a(Lb7/i;)Ljava/lang/Object;

    move-result-object v7

    .line 52
    invoke-virtual {v6}, La7/n$b;->F()La7/k;

    move-result-object v8

    if-ne v8, v2, :cond_18

    .line 53
    new-instance v8, Ly6/i$a;

    .line 54
    invoke-virtual {v6}, La7/n$b;->E()La7/p;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v5, :cond_11

    const/4 v5, 0x2

    if-eq v9, v5, :cond_10

    const/4 v5, 0x3

    if-eq v9, v5, :cond_f

    const/4 v5, 0x4

    if-ne v9, v5, :cond_e

    goto :goto_5

    .line 55
    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_f
    sget-object v5, Ly6/b;->a:[B

    goto :goto_6

    .line 57
    :cond_10
    :goto_5
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v9, 0x0

    .line 58
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 59
    invoke-virtual {v6}, La7/n$b;->D()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 60
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    goto :goto_6

    .line 61
    :cond_11
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 62
    invoke-virtual {v9, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 63
    invoke-virtual {v6}, La7/n$b;->D()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 65
    :goto_6
    invoke-virtual {v6}, La7/n$b;->F()La7/k;

    move-result-object v9

    .line 66
    invoke-direct {v8, v7, v5, v9}, Ly6/i$a;-><init>(Ljava/lang/Object;[BLa7/k;)V

    .line 67
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v7, Ly6/i$b;

    .line 70
    iget-object v9, v8, Ly6/i$a;->b:[B

    if-nez v9, :cond_12

    const/4 v9, 0x0

    goto :goto_7

    .line 71
    :cond_12
    array-length v10, v9

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v9

    .line 72
    :goto_7
    invoke-direct {v7, v9}, Ly6/i$b;-><init>([B)V

    .line 73
    iget-object v9, v3, Ly6/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v9, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_13

    .line 74
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v5, v3, Ly6/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_13
    invoke-virtual {v6}, La7/n$b;->D()I

    move-result v5

    .line 79
    iget-object v6, p2, Ly6/g;->a:La7/n;

    .line 80
    invoke-virtual {v6}, La7/n;->D()I

    move-result v6

    if-ne v5, v6, :cond_17

    .line 81
    iget-object v5, v8, Ly6/i$a;->c:La7/k;

    if-ne v5, v2, :cond_16

    .line 82
    iget-object v5, v8, Ly6/i$a;->b:[B

    if-nez v5, :cond_14

    const/4 v5, 0x0

    goto :goto_8

    .line 83
    :cond_14
    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    .line 84
    :goto_8
    invoke-virtual {v3, v5}, Ly6/i;->a([B)Ljava/util/List;

    move-result-object v5

    .line 85
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 86
    iput-object v8, v3, Ly6/i;->b:Ly6/i$a;

    goto :goto_9

    .line 87
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the primary entry has to be ENABLED"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_9
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 89
    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "only ENABLED key is allowed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19
    const/4 p2, 0x0

    .line 90
    new-instance p3, Ljava/security/GeneralSecurityException;

    const-string v0, "Primitive type "

    .line 91
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported by key manager of type "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-interface {v7}, Ly6/m$a;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", supported primitives: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {v7}, Ly6/m$a;->d()Ljava/util/Set;

    move-result-object p1

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-nez v2, :cond_1a

    const-string v2, ", "

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    goto :goto_a

    .line 99
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 101
    :cond_1c
    sget-object p1, Ly6/m;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly6/j;

    if-eqz p1, :cond_1e

    .line 102
    invoke-interface {p1}, Ly6/j;->a()V

    .line 103
    iget-object p2, v3, Ly6/i;->c:Ljava/lang/Class;

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 105
    invoke-interface {p1, v3}, Ly6/j;->b(Ly6/i;)Ljava/lang/Object;

    move-result-object p1

    .line 106
    check-cast p1, Ly6/n;

    .line 107
    new-instance p2, Lc1/a;

    invoke-direct {p2, v1, p1}, Lc1/a;-><init>(Ljava/io/File;Ly6/n;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "file.path"

    invoke-static {p1, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance p3, Lcd/b;

    invoke-direct {p3, p1, p2}, Lcd/b;-><init>(Ljava/lang/String;Lc1/a;)V

    return-object p3

    .line 110
    :cond_1d
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong input primitive class, expected "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-interface {p1}, Ly6/j;->a()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object p1, v3, Ly6/i;->c:Ljava/lang/Class;

    .line 113
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 114
    :cond_1e
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 115
    invoke-static {p3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 116
    iget-object p3, v3, Ly6/i;->c:Ljava/lang/Class;

    .line 117
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1f
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset must contain at least one ENABLED key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_20
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 120
    invoke-static {p3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p2

    .line 122
    monitor-exit p1

    throw p2

    :catchall_1
    move-exception p1

    .line 123
    monitor-exit v2

    throw p1

    .line 124
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key URI must start with android-keystore://"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
