.class public final Lokhttp3/internal/ws/RealWebSocket$Close;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Close"
.end annotation


# instance fields
.field private final cancelAfterCloseMillis:J

.field private final code:I

.field private final reason:Lde/g;


# direct methods
.method public constructor <init>(ILde/g;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    .line 3
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lde/g;

    .line 4
    iput-wide p3, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-void
.end method


# virtual methods
.method public final getCancelAfterCloseMillis()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    return-wide v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->code:I

    return v0
.end method

.method public final getReason()Lde/g;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$Close;->reason:Lde/g;

    return-object v0
.end method
