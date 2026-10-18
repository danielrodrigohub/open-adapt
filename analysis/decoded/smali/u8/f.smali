.class public final Lu8/f;
.super Lrd/o;
.source "ErrorDisplay.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lu8/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu8/f;

    invoke-direct {v0}, Lu8/f;-><init>()V

    sput-object v0, Lu8/f;->h:Lu8/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method
