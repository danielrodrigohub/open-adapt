.class public final Ly6/k;
.super Ljava/lang/Object;
.source "Registry.java"

# interfaces
.implements Ly6/m$a;


# instance fields
.field public final synthetic a:Ly6/f;


# direct methods
.method public constructor <init>(Ly6/f;)V
    .locals 0

    iput-object p1, p0, Ly6/k;->a:Ly6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ly6/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TQ;>;)",
            "Ly6/c<",
            "TQ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ly6/d;

    iget-object v1, p0, Ly6/k;->a:Ly6/f;

    invoke-direct {v0, v1, p1}, Ly6/d;-><init>(Ly6/f;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive type not supported"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Ly6/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly6/c<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ly6/d;

    iget-object v1, p0, Ly6/k;->a:Ly6/f;

    .line 2
    iget-object v2, v1, Ly6/f;->c:Ljava/lang/Class;

    .line 3
    invoke-direct {v0, v1, v2}, Ly6/d;-><init>(Ly6/f;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ly6/k;->a:Ly6/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly6/k;->a:Ly6/f;

    .line 2
    iget-object v0, v0, Ly6/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
