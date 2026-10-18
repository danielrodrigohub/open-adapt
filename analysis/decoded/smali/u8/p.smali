.class public final Lu8/p;
.super Lrd/o;
.source "IssuesConnectingErrorDisplay.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lh8/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lu8/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu8/p;

    invoke-direct {v0}, Lu8/p;-><init>()V

    sput-object v0, Lu8/p;->h:Lu8/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    sget v0, Lh8/a;->a:I

    .line 2
    sget-object v0, Lh8/c;->b:Lh8/c;

    return-object v0
.end method
