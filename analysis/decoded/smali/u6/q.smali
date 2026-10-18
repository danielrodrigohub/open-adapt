.class public final Lu6/q;
.super Lu6/w;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu6/w<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:Lu6/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu6/q;

    invoke-direct {v0}, Lu6/q;-><init>()V

    sput-object v0, Lu6/q;->m:Lu6/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lu6/q0;->n:Lu6/q0;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lu6/w;-><init>(Lu6/x;I)V

    return-void
.end method
