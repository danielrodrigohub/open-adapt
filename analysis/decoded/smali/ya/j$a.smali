.class public final Lya/j$a;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/j;-><init>(Lya/d;Lv9/a;Lba/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Lya/j;


# direct methods
.method public constructor <init>(Lya/d;Lya/j;)V
    .locals 0

    iput-object p1, p0, Lya/j$a;->h:Lya/d;

    iput-object p2, p0, Lya/j$a;->i:Lya/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lya/j$a;->h:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->A:Lhc/l0;

    .line 3
    iget-object v2, p0, Lya/j$a;->i:Lya/j;

    invoke-interface {v1, v2}, Lhc/l0;->A(Lnc/d;)Lhc/a;

    move-result-object v1

    .line 4
    iput-object v1, v0, Lya/d;->c:Lhc/a;

    .line 5
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
