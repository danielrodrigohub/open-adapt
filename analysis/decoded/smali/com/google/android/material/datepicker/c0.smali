.class public final Lcom/google/android/material/datepicker/c0;
.super Ljava/lang/Object;
.source "YearGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lcom/google/android/material/datepicker/d0;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/d0;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/d0;

    iput p2, p0, Lcom/google/android/material/datepicker/c0;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/google/android/material/datepicker/c0;->h:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/d0;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/datepicker/d0;->d:Lcom/google/android/material/datepicker/g;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    .line 4
    iget v0, v0, Lcom/google/android/material/datepicker/t;->i:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/t;->m(II)Lcom/google/android/material/datepicker/t;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/d0;

    .line 6
    iget-object v0, v0, Lcom/google/android/material/datepicker/d0;->d:Lcom/google/android/material/datepicker/g;

    .line 7
    iget-object v0, v0, Lcom/google/android/material/datepicker/g;->d0:Lcom/google/android/material/datepicker/a;

    .line 8
    iget-object v1, v0, Lcom/google/android/material/datepicker/a;->h:Lcom/google/android/material/datepicker/t;

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/t;->b(Lcom/google/android/material/datepicker/t;)I

    move-result v1

    if-gez v1, :cond_0

    .line 9
    iget-object p1, v0, Lcom/google/android/material/datepicker/a;->h:Lcom/google/android/material/datepicker/t;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/google/android/material/datepicker/a;->i:Lcom/google/android/material/datepicker/t;

    invoke-virtual {p1, v1}, Lcom/google/android/material/datepicker/t;->b(Lcom/google/android/material/datepicker/t;)I

    move-result v1

    if-lez v1, :cond_1

    .line 11
    iget-object p1, v0, Lcom/google/android/material/datepicker/a;->i:Lcom/google/android/material/datepicker/t;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/d0;

    .line 13
    iget-object v0, v0, Lcom/google/android/material/datepicker/d0;->d:Lcom/google/android/material/datepicker/g;

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/g;->s0(Lcom/google/android/material/datepicker/t;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/material/datepicker/c0;->i:Lcom/google/android/material/datepicker/d0;

    .line 16
    iget-object p1, p1, Lcom/google/android/material/datepicker/d0;->d:Lcom/google/android/material/datepicker/g;

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/g;->t0(I)V

    return-void
.end method
