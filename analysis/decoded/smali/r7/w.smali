.class public final Lr7/w;
.super Lrd/o;
.source "DeepLinkNav.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroid/app/Activity;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lr7/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr7/w;

    invoke-direct {v0}, Lr7/w;-><init>()V

    sput-object v0, Lr7/w;->h:Lr7/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroid/app/Activity;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lh9/g0;

    sget-object v1, Lh9/g0;->f:Lh9/g0$b;

    invoke-virtual {v1}, Lh9/g0$b;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lh9/g0;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
