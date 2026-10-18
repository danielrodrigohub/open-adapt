.class public final Lr7/o;
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
.field public static final h:Lr7/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr7/o;

    invoke-direct {v0}, Lr7/o;-><init>()V

    sput-object v0, Lr7/o;->h:Lr7/o;

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
    .locals 1

    .line 1
    check-cast p1, Landroid/app/Activity;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lh9/x;->c:Lh9/x;

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
