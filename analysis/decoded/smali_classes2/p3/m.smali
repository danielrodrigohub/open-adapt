.class public final synthetic Lp3/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lp3/p$a;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:J

.field public final synthetic k:J


# direct methods
.method public synthetic constructor <init>(Lp3/p$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/m;->h:Lp3/p$a;

    iput-object p2, p0, Lp3/m;->i:Ljava/lang/String;

    iput-wide p3, p0, Lp3/m;->j:J

    iput-wide p5, p0, Lp3/m;->k:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lp3/m;->h:Lp3/p$a;

    iget-object v2, p0, Lp3/m;->i:Ljava/lang/String;

    iget-wide v3, p0, Lp3/m;->j:J

    iget-wide v5, p0, Lp3/m;->k:J

    .line 1
    iget-object v1, v0, Lp3/p$a;->b:Lp3/p;

    sget v0, Lm5/g0;->a:I

    .line 2
    invoke-interface/range {v1 .. v6}, Lp3/p;->w(Ljava/lang/String;JJ)V

    return-void
.end method
