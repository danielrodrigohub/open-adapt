.class public final synthetic Le4/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Le4/d;

.field public final synthetic b:Le4/l$c;


# direct methods
.method public synthetic constructor <init>(Le4/d;Le4/l$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le4/a;->a:Le4/d;

    iput-object p2, p0, Le4/a;->b:Le4/l$c;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 0

    iget-object p1, p0, Le4/a;->a:Le4/d;

    iget-object p4, p0, Le4/a;->b:Le4/l$c;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Ln5/g$b;

    invoke-virtual {p4, p2, p3}, Ln5/g$b;->b(J)V

    return-void
.end method
