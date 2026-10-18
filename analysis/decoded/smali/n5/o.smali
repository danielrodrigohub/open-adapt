.class public final synthetic Ln5/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ln5/s$a;

.field public final synthetic i:I

.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(Ln5/s$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/o;->h:Ln5/s$a;

    iput p2, p0, Ln5/o;->i:I

    iput-wide p3, p0, Ln5/o;->j:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln5/o;->h:Ln5/s$a;

    iget v1, p0, Ln5/o;->i:I

    iget-wide v2, p0, Ln5/o;->j:J

    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v4, Lm5/g0;->a:I

    invoke-interface {v0, v1, v2, v3}, Ln5/s;->B(IJ)V

    return-void
.end method
