.class public final Landroidx/fragment/app/l$a;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Landroidx/fragment/app/l;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/l$a;->h:Landroidx/fragment/app/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l$a;->h:Landroidx/fragment/app/l;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/l;->d0:Landroidx/fragment/app/l$c;

    .line 3
    iget-object v0, v0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    .line 4
    invoke-virtual {v1, v0}, Landroidx/fragment/app/l$c;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
