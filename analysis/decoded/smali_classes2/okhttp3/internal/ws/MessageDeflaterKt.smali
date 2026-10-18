.class public final Lokhttp3/internal/ws/MessageDeflaterKt;
.super Ljava/lang/Object;
.source "MessageDeflater.kt"


# static fields
.field private static final EMPTY_DEFLATE_BLOCK:Lde/g;

.field private static final LAST_OCTETS_COUNT_TO_REMOVE_AFTER_DEFLATION:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lde/g;->k:Lde/g$a;

    const-string v1, "000000ffff"

    invoke-virtual {v0, v1}, Lde/g$a;->b(Ljava/lang/String;)Lde/g;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/ws/MessageDeflaterKt;->EMPTY_DEFLATE_BLOCK:Lde/g;

    return-void
.end method

.method public static final synthetic access$getEMPTY_DEFLATE_BLOCK$p()Lde/g;
    .locals 1

    sget-object v0, Lokhttp3/internal/ws/MessageDeflaterKt;->EMPTY_DEFLATE_BLOCK:Lde/g;

    return-object v0
.end method
