.class public final Lx8/m0;
.super Lrd/o;
.source "ShoeControllerUiHelper.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Lx8/d0;",
        "Lx8/k0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lx8/m0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx8/m0;

    invoke-direct {v0}, Lx8/m0;-><init>()V

    sput-object v0, Lx8/m0;->h:Lx8/m0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lx8/d0;

    check-cast p2, Lx8/k0;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
