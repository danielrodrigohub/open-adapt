.class public final Landroidx/transition/a$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/a;->k(Landroid/view/ViewGroup;Lg1/g;Lg1/g;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Landroidx/transition/a$i;


# direct methods
.method public constructor <init>(Landroidx/transition/a$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/a$g;->mViewBounds:Landroidx/transition/a$i;

    return-void
.end method
