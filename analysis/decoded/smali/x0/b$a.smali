.class public final Lx0/b$a;
.super Ljava/lang/Object;
.source "ListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/b;->v0(Landroidx/appcompat/app/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lx0/b;


# direct methods
.method public constructor <init>(Lx0/b;)V
    .locals 0

    iput-object p1, p0, Lx0/b$a;->h:Lx0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/b$a;->h:Lx0/b;

    iput p2, v0, Lx0/b;->y0:I

    const/4 p2, -0x1

    .line 2
    invoke-virtual {v0, p1, p2}, Landroidx/preference/b;->onClick(Landroid/content/DialogInterface;I)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
