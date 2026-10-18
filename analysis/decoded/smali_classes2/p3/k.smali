.class public final synthetic Lp3/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp3/p$a;

.field public final synthetic i:I

.field public final synthetic j:J

.field public final synthetic k:J


# direct methods
.method public synthetic constructor <init>(Lp3/p$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/k;->h:Lp3/p$a;

    iput p2, p0, Lp3/k;->i:I

    iput-wide p3, p0, Lp3/k;->j:J

    iput-wide p5, p0, Lp3/k;->k:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lp3/k;->h:Lp3/p$a;

    iget v2, p0, Lp3/k;->i:I

    iget-wide v3, p0, Lp3/k;->j:J

    iget-wide v5, p0, Lp3/k;->k:J

    .line 1
    iget-object v1, v0, Lp3/p$a;->b:Lp3/p;

    sget v0, Lm5/g0;->a:I

    .line 2
    invoke-interface/range {v1 .. v6}, Lp3/p;->A(IJJ)V

    return-void
.end method
