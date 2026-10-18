.class public final synthetic Lo3/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/i;->b:Lo3/b$a;

    iput p2, p0, Lo3/i;->c:I

    iput-wide p3, p0, Lo3/i;->d:J

    iput-wide p5, p0, Lo3/i;->e:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo3/i;->b:Lo3/b$a;

    iget v1, p0, Lo3/i;->c:I

    iget-wide v2, p0, Lo3/i;->d:J

    check-cast p1, Lo3/b;

    invoke-interface {p1, v0, v1, v2, v3}, Lo3/b;->S(Lo3/b$a;IJ)V

    return-void
.end method
