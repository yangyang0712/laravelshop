<div class="box box-info">
    <div class="box-header with-border">
        <form class="form-horizontal">
            <meta name="csrf-token" content="{{ csrf_token() }}">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label">级别1分佣 比例</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="commission1" id="commission1" style="width: 20%"
                           onKeyUp="value=value.replace(/\D/g,'')" onafterpaste="value=value.replace(/\D/g,'')"
                           value="{{$commission['commission1']}}">
                    <span style="color: rgba(0, 0, 0, 0.6)">请填写100以内数字，将自动转化为百分比</span>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">级别2分佣 比例</label>
                <div class="col-sm-10">
                    <input type="text" name="commission2" class="form-control" id="commission2" style="width: 20%"
                           onKeyUp="value=value.replace(/\D/g,'')" onafterpaste="value=value.replace(/\D/g,'')"
                           value="{{$commission['commission2']}}">
                    <span style="color: rgba(0, 0, 0, 0.6)">请填写100以内数字，将自动转化为百分比</span>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">级别3分佣 比例</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="commission3" id="commission3" style="width: 20%"
                           onKeyUp="value=value.replace(/\D/g,'')" onafterpaste="value=value.replace(/\D/g,'')"
                           value="{{$commission['commission3']}}">
                    <span style="color: rgba(0, 0, 0, 0.6)">请填写100以内数字，将自动转化为百分比</span>
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">升级条件 提现满金额</label>
                <div class="col-sm-10">
                    <input type="text" name="commissionmoney" class="form-control" id="commissionmoney"
                           style="width: 20%" onkeyup="value=value.replace(/[^\d\.]/g,'')"
                           value="{{$commission['commissionmoney']}}">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">升级条件 订单总金额</label>
                <div class="col-sm-10">
                    <input type="text" name="ordermoney" class="form-control" id="ordermoney" style="width: 20%"
                           onkeyup="value=value.replace(/[^\d\.]/g,'')"
                           value="{{$commission['ordermoney']}}">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label">升级条件 订单总金额</label>
                <div class="col-sm-10">
                    <input type="text" name="downcount" class="form-control" id="downcount" style="width: 20%"
                           onkeyup="value=value.replace(/[^\d\.]/g,'')"
                           value="{{$commission['downcount']}}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                    <input type="hidden" name="id" class="form-control" id="id" style="width: 20%"
                           value="{{$commission['id']}}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-default" id="button">提交</button>
                </div>
            </div>
            @csrf
        </form>
    </div>
</div>
<script>
    $('#button').click(function () {
        var commission1 = document.getElementById('commission1').value;
        var commission2 = document.getElementById('commission2').value;
        var commission3 = document.getElementById('commission3').value;
        var commissionmoney = document.getElementById('commissionmoney').value;
        var ordermoney = document.getElementById('ordermoney').value;
        var downcount = document.getElementById('downcount').value;
        var id = document.getElementById('id').value;
        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            datatype: 'json',
            type: 'POST',
            data:{
                commission1:commission1,
                commission2:commission2,
                commission3:commission3,
                commissionmoney:commissionmoney,
                ordermoney:ordermoney,
                downcount:downcount,
                id:id,
            },
            success: function(res) {
                swal('提交成功', '', 'success')
            },
            error: function(err) {
                swal('请稍后再试', '', 'error');
            }
        })
    })
</script>