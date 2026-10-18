.class public final synthetic Li5/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic h:Li5/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li5/f;

    invoke-direct {v0}, Li5/f;-><init>()V

    sput-object v0, Li5/f;->h:Li5/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Li5/g$a;

    check-cast p2, Li5/g$a;

    iget-object p1, p1, Li5/g$a;->a:Li5/g$b;

    iget p1, p1, Li5/g$b;->b:I

    iget-object p2, p2, Li5/g$a;->a:Li5/g$b;

    iget p2, p2, Li5/g$b;->b:I

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
