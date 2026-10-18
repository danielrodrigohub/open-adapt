.class public Le4/m;
.super Lq3/f;
.source "MediaCodecDecoderException.java"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Le4/n;)V
    .locals 2

    const-string v0, "Decoder failed: "

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p2, Le4/n;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lq3/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    sget p2, Lm5/g0;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1

    .line 4
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v1

    .line 6
    :cond_1
    iput-object v1, p0, Le4/m;->h:Ljava/lang/String;

    return-void
.end method
