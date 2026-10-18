.class public final synthetic Le4/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic h:Le4/r$f;


# direct methods
.method public synthetic constructor <init>(Le4/r$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le4/q;->h:Le4/r$f;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Le4/q;->h:Le4/r$f;

    invoke-interface {v0, p2}, Le4/r$f;->a(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, Le4/r$f;->a(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
