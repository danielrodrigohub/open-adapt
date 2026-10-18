.class public final Lu6/d0;
.super Lu6/a;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:Lu6/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/a;"
        }
    .end annotation
.end field


# instance fields
.field public final j:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu6/d0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lu6/d0;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lu6/d0;->l:Lu6/d0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lu6/a;-><init>(II)V

    .line 2
    iput-object p1, p0, Lu6/d0;->j:[Ljava/lang/Object;

    .line 3
    iput v0, p0, Lu6/d0;->k:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lu6/d0;->j:[Ljava/lang/Object;

    iget v1, p0, Lu6/d0;->k:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
