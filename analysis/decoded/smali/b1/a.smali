.class public final synthetic Lb1/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/n;


# instance fields
.field public final synthetic h:Lb1/b;


# direct methods
.method public synthetic constructor <init>(Lb1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/a;->h:Lb1/b;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 1

    iget-object p1, p0, Lb1/a;->h:Lb1/b;

    const-string v0, "this$0"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroidx/lifecycle/i$b;->ON_START:Landroidx/lifecycle/i$b;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lb1/b;->f:Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Landroidx/lifecycle/i$b;->ON_STOP:Landroidx/lifecycle/i$b;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p1, Lb1/b;->f:Z

    :cond_1
    :goto_0
    return-void
.end method
