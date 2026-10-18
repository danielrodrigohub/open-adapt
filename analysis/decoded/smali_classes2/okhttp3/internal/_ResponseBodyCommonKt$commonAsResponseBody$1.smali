.class public final Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "-ResponseBodyCommon.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/_ResponseBodyCommonKt;->commonAsResponseBody(Lde/f;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $contentLength:J

.field public final synthetic $contentType:Lokhttp3/MediaType;

.field public final synthetic $this_commonAsResponseBody:Lde/f;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;JLde/f;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;->$contentType:Lokhttp3/MediaType;

    iput-wide p2, p0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;->$contentLength:J

    iput-object p4, p0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;->$this_commonAsResponseBody:Lde/f;

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;->$contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public source()Lde/f;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/_ResponseBodyCommonKt$commonAsResponseBody$1;->$this_commonAsResponseBody:Lde/f;

    return-object v0
.end method
