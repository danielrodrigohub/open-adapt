.class public final synthetic Lo9/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic h:Lo9/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lo9/d;

    invoke-direct {v0}, Lo9/d;-><init>()V

    sput-object v0, Lo9/d;->h:Lo9/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    sget p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    const/4 p1, 0x0

    return p1
.end method
