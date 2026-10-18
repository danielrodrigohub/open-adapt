.class public final Lg9/h$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "AutoLaceAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg9/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final u:Landroid/view/View;

.field public final v:Landroid/widget/RadioButton;

.field public final w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00d1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "row.findViewById(R.id.auto_lace_mode_row_parent)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg9/h$c;->u:Landroid/view/View;

    const v0, 0x7f0a00d0

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "row.findViewById(R.id.auto_lace_mode_radio)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lg9/h$c;->v:Landroid/widget/RadioButton;

    const v0, 0x7f0a00cf

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "row.findViewById(R.id.auto_lace_mode_label)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lg9/h$c;->w:Landroid/widget/TextView;

    return-void
.end method
