.class public final synthetic Ln5/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ln5/s$a;

.field public final synthetic i:J

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Ln5/s$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/p;->h:Ln5/s$a;

    iput-wide p2, p0, Ln5/p;->i:J

    iput p4, p0, Ln5/p;->j:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln5/p;->h:Ln5/s$a;

    iget-wide v1, p0, Ln5/p;->i:J

    iget v3, p0, Ln5/p;->j:I

    .line 1
    iget-object v0, v0, Ln5/s$a;->b:Ln5/s;

    sget v4, Lm5/g0;->a:I

    .line 2
    invoke-interface {v0, v1, v2, v3}, Ln5/s;->D(JI)V

    return-void
.end method
