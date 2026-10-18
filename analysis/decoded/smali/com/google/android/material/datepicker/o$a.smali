.class public final Lcom/google/android/material/datepicker/o$a;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/o;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/android/material/datepicker/o;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/o$a;->h:Lcom/google/android/material/datepicker/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/datepicker/o$a;->h:Lcom/google/android/material/datepicker/o;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/datepicker/o;->q0:Ljava/util/LinkedHashSet;

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/r;

    .line 4
    iget-object v1, p0, Lcom/google/android/material/datepicker/o$a;->h:Lcom/google/android/material/datepicker/o;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/o;->s0()Lcom/google/android/material/datepicker/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/material/datepicker/d;->u()Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lcom/google/android/material/datepicker/r;->a()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/o$a;->h:Lcom/google/android/material/datepicker/o;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0}, Landroidx/fragment/app/l;->p0(ZZ)V

    return-void
.end method
