.class public final Lde/m0;
.super Ljava/lang/Object;
.source "-Base64.kt"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lde/g;->k:Lde/g$a;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lde/g;->h:[B

    .line 3
    sput-object v1, Lde/m0;->a:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 4
    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    return-void
.end method
