.class public final synthetic Ln5/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ln5/s$a;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(Ln5/s$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/q;->h:Ln5/s$a;

    iput-object p2, p0, Ln5/q;->i:Ljava/lang/Object;

    iput-wide p3, p0, Ln5/q;->j:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln5/q;->h:Ln5/s$a;

    iget-object v1, p0, Ln5/q;->i:Ljava/lang/Object;

    iget-wide v2, p0, Ln5/q;->j:J

    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v4, Lm5/g0;->a:I

    invoke-interface {v0, v1, v2, v3}, Ln5/s;->f(Ljava/lang/Object;J)V

    return-void
.end method
