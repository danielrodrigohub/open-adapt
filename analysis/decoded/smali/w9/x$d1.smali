.class public final Lw9/x$d1;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;-><init>(Lea/m;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lw9/x$l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/x;


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$d1;->h:Lw9/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw9/x$l;"
        }
    .end annotation

    new-instance v0, Lw9/x$l;

    iget-object v1, p0, Lw9/x$d1;->h:Lw9/x;

    invoke-direct {v0, v1}, Lw9/x$l;-><init>(Lw9/x;)V

    return-object v0
.end method
