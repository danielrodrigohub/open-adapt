.class public final Lr3/r;
.super Ljava/lang/Object;
.source "ErrorStateDrmSession.java"

# interfaces
.implements Lr3/e;


# instance fields
.field public final a:Lr3/e$a;


# direct methods
.method public constructor <init>(Lr3/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr3/r;->a:Lr3/e$a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/util/UUID;
    .locals 1

    sget-object v0, Ln3/i;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public final c(Lr3/k$a;)V
    .locals 0

    return-void
.end method

.method public final d(Lr3/k$a;)V
    .locals 0

    return-void
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lr3/e$a;
    .locals 1

    iget-object v0, p0, Lr3/r;->a:Lr3/e$a;

    return-object v0
.end method

.method public final g()Lq3/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
