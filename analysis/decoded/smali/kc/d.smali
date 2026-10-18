.class public final Lkc/d;
.super Ljava/lang/Exception;
.source "FunctionDeprecatedInDeviceFirmware.kt"


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmc/e;Lmc/e;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Function call deprecated in firmware version of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is too low. The supported firmware version is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currentFirmwareVersion"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requiredFirmwareVersion"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {v0, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object v0, p0, Lkc/d;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkc/d;->h:Ljava/lang/String;

    return-object v0
.end method
