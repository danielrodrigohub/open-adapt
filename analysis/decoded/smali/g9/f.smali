.class public final synthetic Lg9/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lg9/h;

.field public final synthetic i:Lg9/h$c;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lg9/h;Lg9/h$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg9/f;->h:Lg9/h;

    iput-object p2, p0, Lg9/f;->i:Lg9/h$c;

    iput p3, p0, Lg9/f;->j:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lg9/f;->h:Lg9/h;

    iget-object v0, p0, Lg9/f;->i:Lg9/h$c;

    iget v1, p0, Lg9/f;->j:I

    const-string v2, "this$0"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$holder"

    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lg9/h$c;->v:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lg9/h;->n(Landroid/widget/RadioButton;IZ)V

    return-void
.end method
