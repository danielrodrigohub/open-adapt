.class public final synthetic Li9/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Li9/g;

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Li9/g;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li9/f;->h:Li9/g;

    iput-object p2, p0, Li9/f;->i:Ljava/util/List;

    iput p3, p0, Li9/f;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Li9/f;->h:Li9/g;

    iget-object v1, p0, Li9/f;->i:Ljava/util/List;

    iget v2, p0, Li9/f;->j:I

    sget-object v3, Li9/g;->K0:Li9/g$a;

    const-string v3, "this$0"

    .line 1
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$presets"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Li9/g;->v0(Ljava/util/List;I)V

    return-void
.end method
