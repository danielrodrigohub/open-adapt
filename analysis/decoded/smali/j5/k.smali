.class public final synthetic Lj5/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic h:Lj5/k;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lj5/k;

    invoke-direct {v0}, Lj5/k;-><init>()V

    sput-object v0, Lj5/k;->h:Lj5/k;

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

    check-cast p1, Lj5/i$h;

    check-cast p2, Lj5/i$h;

    invoke-static {p1, p2}, Lj5/i$h;->i(Lj5/i$h;Lj5/i$h;)I

    move-result p1

    return p1
.end method
