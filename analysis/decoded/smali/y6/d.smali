.class public final Ly6/d;
.super Ljava/lang/Object;
.source "KeyManagerImpl.java"

# interfaces
.implements Ly6/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Lb7/q0;",
        ">",
        "Ljava/lang/Object;",
        "Ly6/c<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field public final a:Ly6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly6/f<",
            "TKeyProtoT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly6/f;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/f<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ly6/f;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Given internalKeyMananger %s does not support primitive class %s"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    iput-object p1, p0, Ly6/d;->a:Ly6/f;

    .line 9
    iput-object p2, p0, Ly6/d;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lb7/i;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/i;",
            ")TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ly6/d;->a:Ly6/f;

    invoke-virtual {v0, p1}, Ly6/f;->d(Lb7/i;)Lb7/q0;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Ly6/d;->c(Lb7/q0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lb7/a0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    .line 4
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Ly6/d;->a:Ly6/f;

    .line 6
    iget-object v2, v2, Ly6/f;->a:Ljava/lang/Class;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lb7/i;)La7/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ly6/d;->a:Ly6/f;

    invoke-virtual {v0}, Ly6/f;->b()Ly6/f$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ly6/f$a;->b(Lb7/i;)Lb7/q0;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Ly6/f$a;->c(Lb7/q0;)V

    .line 4
    invoke-virtual {v0, p1}, Ly6/f$a;->a(Lb7/q0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb7/q0;

    .line 5
    invoke-static {}, La7/j;->F()La7/j$a;

    move-result-object v0

    .line 6
    iget-object v1, p0, Ly6/d;->a:Ly6/f;

    invoke-virtual {v1}, Ly6/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 8
    iget-object v2, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/j;

    invoke-static {v2, v1}, La7/j;->y(La7/j;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Lb7/q0;->e()Lb7/i;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 11
    iget-object v1, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v1, La7/j;

    invoke-static {v1, p1}, La7/j;->z(La7/j;Lb7/i;)V

    .line 12
    iget-object p1, p0, Ly6/d;->a:Ly6/f;

    .line 13
    invoke-virtual {p1}, Ly6/f;->c()V
    :try_end_0
    .catch Lb7/a0; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, La7/j$b;->j:La7/j$b;

    .line 14
    :try_start_1
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 15
    iget-object v1, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v1, La7/j;

    invoke-static {v1, p1}, La7/j;->A(La7/j;La7/j$b;)V

    .line 16
    invoke-virtual {v0}, Lb7/x$a;->h()Lb7/x;

    move-result-object p1

    check-cast p1, La7/j;
    :try_end_1
    .catch Lb7/a0; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Lb7/q0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProtoT;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Ly6/d;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ly6/d;->a:Ly6/f;

    invoke-virtual {v0, p1}, Ly6/f;->e(Lb7/q0;)V

    .line 3
    iget-object v0, p0, Ly6/d;->a:Ly6/f;

    iget-object v1, p0, Ly6/d;->b:Ljava/lang/Class;

    .line 4
    iget-object v0, v0, Ly6/f;->b:Ljava/util/Map;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly6/f$b;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ly6/f$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested primitive class "

    .line 8
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create a primitive for Void"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
