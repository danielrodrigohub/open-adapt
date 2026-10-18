.class public final Ls9/j;
.super Ljava/lang/Object;
.source "InternetConnectionViewModel.kt"


# static fields
.field public static final a:Ls9/j;

.field public static final b:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/j;

    invoke-direct {v0}, Ls9/j;-><init>()V

    sput-object v0, Ls9/j;->a:Ls9/j;

    sget-object v0, Ls9/j$a;->h:Ls9/j$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Ls9/j;->b:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
