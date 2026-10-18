.class public final synthetic Lp3/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp3/p$a;

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lp3/p$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/l;->h:Lp3/p$a;

    iput-wide p2, p0, Lp3/l;->i:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lp3/l;->h:Lp3/p$a;

    iget-wide v1, p0, Lp3/l;->i:J

    iget-object v0, v0, Lp3/p$a;->b:Lp3/p;

    sget v3, Lm5/g0;->a:I

    invoke-interface {v0, v1, v2}, Lp3/p;->p(J)V

    return-void
.end method
