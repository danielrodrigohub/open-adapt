.class public final Ld7/c;
.super Ljava/lang/Object;
.source "EngineFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Ld7/d<",
        "TT_ENGINE;>;T_ENGINE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ld7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/c<",
            "Ld7/d$a;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ld7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld7/c<",
            "Ld7/d$b;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ld7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_WRAPPER;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Ld7/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ld7/c;->c:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.app.Application"

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v1, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    const-string v3, "GmsCore_OpenSSL"

    const-string v4, "AndroidOpenSSL"

    .line 3
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_1

    .line 5
    aget-object v6, v3, v5

    .line 6
    invoke-static {v6}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8
    :cond_0
    sget-object v7, Ld7/c;->c:Ljava/util/logging/Logger;

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v6, v8, v1

    const-string v6, "Provider %s not available"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 9
    :cond_1
    sput-object v4, Ld7/c;->d:Ljava/util/ArrayList;

    goto :goto_3

    .line 10
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ld7/c;->d:Ljava/util/ArrayList;

    .line 11
    :goto_3
    new-instance v0, Ld7/c;

    new-instance v1, Ld7/d$a;

    invoke-direct {v1}, Ld7/d$a;-><init>()V

    invoke-direct {v0, v1}, Ld7/c;-><init>(Ld7/d;)V

    sput-object v0, Ld7/c;->e:Ld7/c;

    .line 12
    new-instance v0, Ld7/c;

    new-instance v1, Ld7/d$b;

    invoke-direct {v1}, Ld7/d$b;-><init>()V

    invoke-direct {v0, v1}, Ld7/c;-><init>(Ld7/d;)V

    sput-object v0, Ld7/c;->f:Ld7/c;

    return-void
.end method

.method public constructor <init>(Ld7/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld7/c;->a:Ld7/d;

    .line 3
    sget-object p1, Ld7/c;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Ld7/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT_ENGINE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ld7/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 2
    :try_start_0
    iget-object v4, p0, Ld7/c;->a:Ld7/d;

    invoke-interface {v4, p1, v3}, Ld7/d;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Ld7/c;->a:Ld7/d;

    invoke-interface {v0, p1, v1}, Ld7/d;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
