.class public final synthetic Lo3/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;


# instance fields
.field public final synthetic b:Lo3/b$a;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lo3/b$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/g;->b:Lo3/b$a;

    iput p2, p0, Lo3/g;->c:I

    iput-wide p3, p0, Lo3/g;->d:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lo3/b;

    invoke-interface {p1}, Lo3/b;->O()V

    return-void
.end method
