.class public final Lf2/k;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Lf2/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le2/l<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le2/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le2/l<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf2/k;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf2/k;->b:Le2/l;

    return-void
.end method


# virtual methods
.method public final a(Ly1/e0;Lg2/b;)La2/b;
    .locals 1

    new-instance v0, La2/p;

    invoke-direct {v0, p1, p2, p0}, La2/p;-><init>(Ly1/e0;Lg2/b;Lf2/k;)V

    return-object v0
.end method
