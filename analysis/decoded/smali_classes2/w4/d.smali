.class public final synthetic Lw4/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic h:Lw4/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lw4/d;

    invoke-direct {v0}, Lw4/d;-><init>()V

    sput-object v0, Lw4/d;->h:Lw4/d;

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

    check-cast p1, Lw4/e$a;

    check-cast p2, Lw4/e$a;

    iget-object p1, p1, Lw4/e$a;->a:Lw4/c;

    iget p1, p1, Lw4/c;->c:I

    iget-object p2, p2, Lw4/e$a;->a:Lw4/c;

    iget p2, p2, Lw4/c;->c:I

    invoke-static {p1, p2}, Lw4/e;->b(II)I

    move-result p1

    return p1
.end method
