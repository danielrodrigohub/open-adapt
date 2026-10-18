.class public final Lx0/c$a;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx0/c;->v0(Landroidx/appcompat/app/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx0/c;


# direct methods
.method public constructor <init>(Lx0/c;)V
    .locals 0

    iput-object p1, p0, Lx0/c$a;->a:Lx0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lx0/c$a;->a:Lx0/c;

    iget-boolean p3, p1, Lx0/c;->z0:Z

    iget-object v0, p1, Lx0/c;->y0:Ljava/util/HashSet;

    iget-object v1, p1, Lx0/c;->B0:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lx0/c;->z0:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lx0/c$a;->a:Lx0/c;

    iget-boolean p3, p1, Lx0/c;->z0:Z

    iget-object v0, p1, Lx0/c;->y0:Ljava/util/HashSet;

    iget-object v1, p1, Lx0/c;->B0:[Ljava/lang/CharSequence;

    aget-object p2, v1, p2

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    or-int/2addr p2, p3

    iput-boolean p2, p1, Lx0/c;->z0:Z

    :goto_0
    return-void
.end method
