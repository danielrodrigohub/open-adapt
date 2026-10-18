.class public final enum Lu6/e0;
.super Ljava/lang/Enum;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu6/e0;",
        ">;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum h:Lu6/e0;

.field public static final synthetic i:[Lu6/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu6/e0;

    invoke-direct {v0}, Lu6/e0;-><init>()V

    sput-object v0, Lu6/e0;->h:Lu6/e0;

    const/4 v1, 0x1

    new-array v1, v1, [Lu6/e0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lu6/e0;->i:[Lu6/e0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu6/e0;
    .locals 1

    const-class v0, Lu6/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu6/e0;

    return-object p0
.end method

.method public static values()[Lu6/e0;
    .locals 1

    sget-object v0, Lu6/e0;->i:[Lu6/e0;

    invoke-virtual {v0}, [Lu6/e0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu6/e0;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lt6/h;->g(ZLjava/lang/Object;)V

    return-void
.end method
