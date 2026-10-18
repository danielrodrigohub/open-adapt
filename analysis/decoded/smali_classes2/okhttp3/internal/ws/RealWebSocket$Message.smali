.class public final Lokhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# instance fields
.field private final data:Lde/g;

.field private final formatOpcode:I


# direct methods
.method public constructor <init>(ILde/g;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 3
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lde/g;

    return-void
.end method


# virtual methods
.method public final getData()Lde/g;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lde/g;

    return-object v0
.end method

.method public final getFormatOpcode()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    return v0
.end method
