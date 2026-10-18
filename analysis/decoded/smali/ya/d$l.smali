.class public final Lya/d$l;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;-><init>(Ljava/lang/String;Lea/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lya/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$l;->h:Lya/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lya/i;

    iget-object v1, p0, Lya/d$l;->h:Lya/d;

    invoke-direct {v0, v1}, Lya/i;-><init>(Lya/d;)V

    return-object v0
.end method
