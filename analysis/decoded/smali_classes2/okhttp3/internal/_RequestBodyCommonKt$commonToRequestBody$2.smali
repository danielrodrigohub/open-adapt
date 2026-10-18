.class public final Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;
.super Lokhttp3/RequestBody;
.source "-RequestBodyCommon.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/_RequestBodyCommonKt;->commonToRequestBody(Lde/g;Lokhttp3/MediaType;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $contentType:Lokhttp3/MediaType;

.field public final synthetic $this_commonToRequestBody:Lde/g;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lde/g;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;->$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;->$this_commonToRequestBody:Lde/g;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;->$this_commonToRequestBody:Lde/g;

    .line 2
    invoke-virtual {v0}, Lde/g;->j()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;->$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lde/e;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/_RequestBodyCommonKt$commonToRequestBody$2;->$this_commonToRequestBody:Lde/g;

    invoke-interface {p1, v0}, Lde/e;->N(Lde/g;)Lde/e;

    return-void
.end method
